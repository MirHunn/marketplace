import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'weeklytimemanagerprofile_model.dart';
export 'weeklytimemanagerprofile_model.dart';

class WeeklytimemanagerprofileWidget extends StatefulWidget {
  const WeeklytimemanagerprofileWidget({super.key});

  @override
  State<WeeklytimemanagerprofileWidget> createState() =>
      _WeeklytimemanagerprofileWidgetState();
}

class _WeeklytimemanagerprofileWidgetState
    extends State<WeeklytimemanagerprofileWidget> {
  late WeeklytimemanagerprofileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeeklytimemanagerprofileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    '55toiu5u' /* This Week */,
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'pinmae4t' /* Monday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked1Date = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: getCurrentTimestamp,
                              lastDate: DateTime(2050),
                              builder: (context, child) {
                                return wrapInMaterialDatePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );

                            if (datePicked1Date != null) {
                              safeSetState(() {
                                _model.datePicked1 = DateTime(
                                  datePicked1Date.year,
                                  datePicked1Date.month,
                                  datePicked1Date.day,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              0,
                              (e) => e..starttime = _model.datePicked1,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(0)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked1,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked2Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked2Time != null) {
                              safeSetState(() {
                                _model.datePicked2 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked2Time.hour,
                                  datePicked2Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              0,
                              (e) => e..endtime = _model.datePicked2,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(0)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked2,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'euwgitji' /* Tuesday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked3Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked3Time != null) {
                              safeSetState(() {
                                _model.datePicked3 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked3Time.hour,
                                  datePicked3Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              1,
                              (e) => e..starttime = _model.datePicked3,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(1)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked3,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked4Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked4Time != null) {
                              safeSetState(() {
                                _model.datePicked4 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked4Time.hour,
                                  datePicked4Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              1,
                              (e) => e..endtime = _model.datePicked4,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(1)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked4,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'p6gxh03y' /* Wednesday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked5Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked5Time != null) {
                              safeSetState(() {
                                _model.datePicked5 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked5Time.hour,
                                  datePicked5Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              2,
                              (e) => e..starttime = _model.datePicked5,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(2)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked5,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked6Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked6Time != null) {
                              safeSetState(() {
                                _model.datePicked6 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked6Time.hour,
                                  datePicked6Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              2,
                              (e) => e..endtime = _model.datePicked6,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(2)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked6,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'nq2h7y29' /* Thursday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked7Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked7Time != null) {
                              safeSetState(() {
                                _model.datePicked7 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked7Time.hour,
                                  datePicked7Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              3,
                              (e) => e..starttime = _model.datePicked7,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(3)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked7,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked8Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked8Time != null) {
                              safeSetState(() {
                                _model.datePicked8 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked8Time.hour,
                                  datePicked8Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              3,
                              (e) => e..endtime = _model.datePicked8,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(3)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked8,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '3wbxhbgd' /* Friday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked9Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked9Time != null) {
                              safeSetState(() {
                                _model.datePicked9 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked9Time.hour,
                                  datePicked9Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              4,
                              (e) => e..starttime = _model.datePicked9,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(4)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked9,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked10Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked10Time != null) {
                              safeSetState(() {
                                _model.datePicked10 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked10Time.hour,
                                  datePicked10Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              4,
                              (e) => e..endtime = _model.datePicked10,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(4)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked10,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'q6j9uo5m' /* Saturday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked11Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked11Time != null) {
                              safeSetState(() {
                                _model.datePicked11 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked11Time.hour,
                                  datePicked11Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              5,
                              (e) => e..starttime = _model.datePicked11,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(5)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked11,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked12Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked12Time != null) {
                              safeSetState(() {
                                _model.datePicked12 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked12Time.hour,
                                  datePicked12Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              5,
                              (e) => e..endtime = _model.datePicked12,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(5)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked12,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'smvywe8v' /* Sunday */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked13Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked13Time != null) {
                              safeSetState(() {
                                _model.datePicked13 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked13Time.hour,
                                  datePicked13Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              6,
                              (e) => e..starttime = _model.datePicked13,
                            );
                            safeSetState(() {});
                          },
                          text: FFAppState()
                                      .availability
                                      .elementAtOrNull(6)
                                      ?.starttime ==
                                  null
                              ? 'Start Time'
                              : (FFAppState()
                                      .availability
                                      .elementAtOrNull(0)!
                                      .hasStarttime()
                                  ? dateTimeFormat(
                                      "jm",
                                      FFAppState()
                                          .availability
                                          .elementAtOrNull(0)!
                                          .starttime!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )
                                  : dateTimeFormat(
                                      "jm",
                                      _model.datePicked13,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    )),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            final datePicked14Time = await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(getCurrentTimestamp),
                              builder: (context, child) {
                                return wrapInMaterialTimePickerTheme(
                                  context,
                                  child!,
                                  headerBackgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                  headerForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  headerTextStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  pickerBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  pickerForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  selectedDateTimeBackgroundColor:
                                      const Color(0xFF4F0B92),
                                  selectedDateTimeForegroundColor:
                                      FlutterFlowTheme.of(context).info,
                                  actionButtonForegroundColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  iconSize: 24.0,
                                );
                              },
                            );
                            if (datePicked14Time != null) {
                              safeSetState(() {
                                _model.datePicked14 = DateTime(
                                  getCurrentTimestamp.year,
                                  getCurrentTimestamp.month,
                                  getCurrentTimestamp.day,
                                  datePicked14Time.hour,
                                  datePicked14Time.minute,
                                );
                              });
                            }
                            FFAppState().updateAvailabilityAtIndex(
                              6,
                              (e) => e..endtime = _model.datePicked14,
                            );
                            safeSetState(() {});
                          },
                          text: valueOrDefault<String>(
                            FFAppState()
                                        .availability
                                        .elementAtOrNull(6)
                                        ?.endtime ==
                                    null
                                ? 'End Time'
                                : (FFAppState()
                                        .availability
                                        .elementAtOrNull(0)!
                                        .hasEndtime()
                                    ? dateTimeFormat(
                                        "jm",
                                        FFAppState()
                                            .availability
                                            .elementAtOrNull(0)
                                            ?.endtime,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        "jm",
                                        _model.datePicked14,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )),
                            'End Time',
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF4F0B92),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(1.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 33.0, 33.0),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 88.0,
                      fillColor: FlutterFlowTheme.of(context).accent1,
                      icon: Icon(
                        Icons.assignment_turned_in_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 55.0,
                      ),
                      onPressed: () async {
                        await currentUserDocument!.pricingtemplateRef!.update({
                          ...mapToFirestore(
                            {
                              'availability': getAvailabilityListFirestoreData(
                                FFAppState().availability,
                              ),
                            },
                          ),
                        });

                        context.goNamed('Myserviceffollowupprofile');
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
