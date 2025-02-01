import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Weeklytimemanagerprofile': ParameterData.none(),
  'Dashboard': ParameterData.none(),
  'Explore': ParameterData.none(),
  'LuxembourgNews': ParameterData.none(),
  'aProfileMyProfile': ParameterData.none(),
  'eProfileHelpTutorial': ParameterData.none(),
  'cbecomeprovider1': ParameterData.none(),
  'Cbecomeproviderascompany1info': (data) async => ParameterData(
        allParams: {
          'servicecategories':
              await getDocumentParameter<ServicecategoryRecord>(data,
                  'servicecategories', ServicecategoryRecord.fromSnapshot),
          'cservicecategory2': await getDocumentParameter<Servcategory2Record>(
              data, 'cservicecategory2', Servcategory2Record.fromSnapshot),
        },
      ),
  'Cbecomeproviderascompany3gallery': ParameterData.none(),
  'Cbecomeproviderascompany4pricing': ParameterData.none(),
  'Cbecomeproviderascompany5terms': ParameterData.none(),
  'Cbecomeproviderascompany6publish': ParameterData.none(),
  'Pbecomeprovideraspeer1': (data) async => ParameterData(
        allParams: {
          'servicecategoriesPP':
              await getDocumentParameter<ServicecategoryRecord>(data,
                  'servicecategoriesPP', ServicecategoryRecord.fromSnapshot),
          'servcat2': await getDocumentParameter<Servcategory2Record>(
              data, 'servcat2', Servcategory2Record.fromSnapshot),
        },
      ),
  'Cbecomeproviderascompany2bankaccount': ParameterData.none(),
  'Pbecomeprovideraspeer2': ParameterData.none(),
  'Pbecomeprovideraspeer3': ParameterData.none(),
  'Pbecomeprovideraspeer4': ParameterData.none(),
  'Pbecomeprovideraspeer5': ParameterData.none(),
  'Pbecomeprovideraspeer6': ParameterData.none(),
  'CLICKEDCATEGORY': (data) async => ParameterData(
        allParams: {
          'service': await getDocumentParameter<ServicecategoryRecord>(
              data, 'service', ServicecategoryRecord.fromSnapshot),
          'category2': getParameter<String>(data, 'category2'),
        },
      ),
  'Myservicedisfunctionalpage': ParameterData.none(),
  'Myserviceffollowupprofile': ParameterData.none(),
  'SupportHelp': ParameterData.none(),
  'SupportTermsofservice': ParameterData.none(),
  'SupportTrustandSafety': ParameterData.none(),
  'AboutOurOffertoSeniors': ParameterData.none(),
  'AboutLuxembourgNews': ParameterData.none(),
  'AboutAccredition': ParameterData.none(),
  'Corporateserviceswithcompany': ParameterData.none(),
  'Corporateservicespeertopeer': ParameterData.none(),
  'Corporateservicespartnerships': ParameterData.none(),
  'Corporateservicesmarketing': ParameterData.none(),
  'ClickedServiceFromExploreAlgolia': (data) async => ParameterData(
        allParams: {
          'servref': await getDocumentParameter<ServiceRecord>(
              data, 'servref', ServiceRecord.fromSnapshot),
        },
      ),
  'PerhourforPHONE': (data) async => ParameterData(
        allParams: {
          'clickedpricingtemplate1':
              await getDocumentParameter<PricingtemplateRecord>(
                  data,
                  'clickedpricingtemplate1',
                  PricingtemplateRecord.fromSnapshot),
        },
      ),
  'selectoptions': ParameterData.none(),
  'PersessionPHONE': (data) async => ParameterData(
        allParams: {
          'clickedpricingtemplate2':
              await getDocumentParameter<PricingtemplateRecord>(
                  data,
                  'clickedpricingtemplate2',
                  PricingtemplateRecord.fromSnapshot),
        },
      ),
  'PerproductPHONE': (data) async => ParameterData(
        allParams: {
          'clickedpricingtemplate4':
              await getDocumentParameter<PricingtemplateRecord>(
                  data,
                  'clickedpricingtemplate4',
                  PricingtemplateRecord.fromSnapshot),
        },
      ),
  'MyActivitiesfollowupprofile': ParameterData.none(),
  'Supportprivacypolicy': ParameterData.none(),
  'perprogrammPHONE': (data) async => ParameterData(
        allParams: {
          'clickedpricingtemplate3':
              await getDocumentParameter<PricingtemplateRecord>(
                  data,
                  'clickedpricingtemplate3',
                  PricingtemplateRecord.fromSnapshot),
        },
      ),
  'A1FirstPage': ParameterData.none(),
  'A3BuyerRegistration': ParameterData.none(),
  'A2BuyerLogin': ParameterData.none(),
  'A4ForgotPasswordLink': ParameterData.none(),
  'A5SellerRegistration': ParameterData.none(),
  'Supporthelpfollowupaccounttypes': ParameterData.none(),
  'Supporthelpfollowuppayments': ParameterData.none(),
  'Supporthelpfollowupguidelines': ParameterData.none(),
  'Supporthelpfollowuppublicdemands': ParameterData.none(),
  'Supporthelpfollowupselling': ParameterData.none(),
  'Supporthelpfollowupbuying': ParameterData.none(),
  'yprofilepageEditProfile': ParameterData.none(),
  'xprofilepageEditService': ParameterData.none(),
  'vEditservicegallery': (data) async => ParameterData(
        allParams: {
          'editservicegallery': await getDocumentParameter<ServiceRecord>(
              data, 'editservicegallery', ServiceRecord.fromSnapshot),
        },
      ),
  'ClickedPublicDemandWithChat': (data) async => ParameterData(
        allParams: {
          'clickedpublicdemand': await getDocumentParameter<PublicdemandRecord>(
              data, 'clickedpublicdemand', PublicdemandRecord.fromSnapshot),
        },
      ),
  'PublicDemandList': ParameterData.none(),
  'usageforpayselectionphone': ParameterData.none(),
  'MyPerhourforPHONE': (data) async => ParameterData(
        allParams: {
          'myperhour': await getDocumentParameter<PricingtemplateRecord>(
              data, 'myperhour', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'MyPerproductPHONE': (data) async => ParameterData(
        allParams: {
          'myperproduct': await getDocumentParameter<PricingtemplateRecord>(
              data, 'myperproduct', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'MyperprogrammPHONE': (data) async => ParameterData(
        allParams: {
          'myperprogram': await getDocumentParameter<PricingtemplateRecord>(
              data, 'myperprogram', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'MyPersessionPHONE': (data) async => ParameterData(
        allParams: {
          'mypersession': await getDocumentParameter<PricingtemplateRecord>(
              data, 'mypersession', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'checkoutperhourPHONE': (data) async => ParameterData(
        allParams: {
          'checkoutperhourPH':
              await getDocumentParameter<PricingtemplateRecord>(data,
                  'checkoutperhourPH', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'checkoutpersessionPHONE': (data) async => ParameterData(
        allParams: {
          'checkoutpersessionPH':
              await getDocumentParameter<PricingtemplateRecord>(data,
                  'checkoutpersessionPH', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'checkoutperprogramPHONE': (data) async => ParameterData(
        allParams: {
          'checkoutperprogramPH':
              await getDocumentParameter<PricingtemplateRecord>(data,
                  'checkoutperprogramPH', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'checkoutperproductPHONE': (data) async => ParameterData(
        allParams: {
          'checkoutperproductPH':
              await getDocumentParameter<PricingtemplateRecord>(data,
                  'checkoutperproductPH', PricingtemplateRecord.fromSnapshot),
        },
      ),
  'P1createpromoteaccount': (data) async => ParameterData(
        allParams: {
          'category': await getDocumentParameter<ServiceRecord>(
              data, 'category', ServiceRecord.fromSnapshot),
          'category2': await getDocumentParameter<Servcategory2Record>(
              data, 'category2', Servcategory2Record.fromSnapshot),
        },
      ),
  'P2createpromoteaccount': ParameterData.none(),
  'p4createpromoteaccount': ParameterData.none(),
  'p5createpromoteaccount': ParameterData.none(),
  'p11createpromoteaccount': ParameterData.none(),
  'p3createpromoteaccount': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
