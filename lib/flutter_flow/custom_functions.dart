import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? prices) {
// summarize a list of prices from the product list
  if (prices == null || prices.isEmpty) {
    return null;
  }
  return prices.reduce((value, element) => value + element);
}

List<AvailabilityStruct>? initialAvailability() {
  // generate 7 random array for each day of the week
  final List<AvailabilityStruct> availability = [];

  final List<String> dayofweek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  for (final day in dayofweek) {
    // final starttime = DateTime(2023, 1, dayofweek.indexOf(day) + 2, 0, 0);
    // final endtime = DateTime(2023, 1, dayofweek.indexOf(day) + 2, 0, 0);
    availability.add(
        AvailabilityStruct(dayofweek: day, starttime: null, endtime: null));
  }

  return availability;
}

List<DateTime>? getAvailableSlots(
  List<DateTime> bookings,
  DateTime dateArg,
  List<AvailabilityStruct> availability,
) {
  // Hourly block between starttime & endtime where DateArg= Availability's DayofWeek exclude Bookings
// First, we need to filter the availability list to only include the DayOfWeekWithTimeStruct objects that match the day of the week of the dateArg.
  final matchingAvailability = availability
      .where((a) =>
          a.dayofweek.toLowerCase() ==
          DateFormat('EEEE').format(dateArg).toLowerCase())
      .toList();

// Next, we need to create a list of DateTime objects representing the half-hourly blocks between the start and end times of each matching DayOfWeekWithTimeStruct object.
  final availableSlots = <DateTime>[];
  for (final a in matchingAvailability) {
    if (a.hasStarttime() && a.hasEndtime()) {
      final startHour = a.starttime!.hour;
      final endHour = a.endtime!.hour;
      final startMinute = a.starttime!.minute;
      final endMinute = a.endtime!.minute;

      for (var hour = startHour; hour <= endHour; hour++) {
        for (var minute = 0; minute < 60; minute += 30) {
          if (hour == startHour && minute < startMinute) {
            continue; // Skip this half-hour block before the start time.
          }

          if (hour == endHour && minute >= endMinute) {
            break; // Exit the minute loop when reaching or exceeding the end time.
          }

          availableSlots.add(
              DateTime(dateArg.year, dateArg.month, dateArg.day, hour, minute));
        }
      }
    }
  }

  // Finally, we need to filter out any DateTime objects that match the bookings list.
  final availableSlotsFiltered = availableSlots
      .where((slot) => !bookings.any((booking) =>
          booking.hour == slot.hour &&
          booking.minute == slot.minute &&
          booking.day == slot.day &&
          booking.month == slot.month &&
          booking.year == slot.year))
      .toList();

  DateTime now = DateTime.now();

  return availableSlotsFiltered.where((slot) => slot.isAfter(now)).toList();
}

DateTime? stringtoTime(
  String? hourArg,
  DateTime? dateArg,
) {
  // output the combination of date from dateArg and hourArg (HH:mm format)
  if (hourArg == null || dateArg == null) {
    return null;
  }
  final hourMin = hourArg.split(':');
  final hour = int.tryParse(hourMin[0]) ?? 0;
  final minute = int.tryParse(hourMin[1]) ?? 0;
  return DateTime(dateArg.year, dateArg.month, dateArg.day, hour, minute);
}

int? averageRating(List<int>? ratings) {
  if (ratings == null || ratings.isEmpty) {
    return null;
  }
  int sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }
  return (sum / ratings.length).round();
}
