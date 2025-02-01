import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const A1FirstPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const A1FirstPageWidget(),
        ),
        FFRoute(
          name: 'Weeklytimemanagerprofile',
          path: '/weeklytimemanagerprofile',
          builder: (context, params) => const WeeklytimemanagerprofileWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Dashboard')
              : const DashboardWidget(),
        ),
        FFRoute(
          name: 'Explore',
          path: '/explore',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Explore')
              : const ExploreWidget(),
        ),
        FFRoute(
          name: 'LuxembourgNews',
          path: '/luxembourgNews',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'LuxembourgNews')
              : const LuxembourgNewsWidget(),
        ),
        FFRoute(
          name: 'aProfileMyProfile',
          path: '/ProfileMyProfile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'aProfileMyProfile')
              : const AProfileMyProfileWidget(),
        ),
        FFRoute(
          name: 'eProfileHelpTutorial',
          path: '/eProfileHelpTutorial',
          builder: (context, params) => const EProfileHelpTutorialWidget(),
        ),
        FFRoute(
          name: 'cbecomeprovider1',
          path: '/cbecomeprovider1',
          builder: (context, params) => const Cbecomeprovider1Widget(),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany1info',
          path: '/cbecomeproviderascompany1info',
          asyncParams: {
            'servicecategories':
                getDoc(['servicecategory'], ServicecategoryRecord.fromSnapshot),
            'cservicecategory2':
                getDoc(['servcategory2'], Servcategory2Record.fromSnapshot),
          },
          builder: (context, params) => Cbecomeproviderascompany1infoWidget(
            servicecategories: params.getParam(
              'servicecategories',
              ParamType.Document,
            ),
            cservicecategory2: params.getParam(
              'cservicecategory2',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany3gallery',
          path: '/cbecomeproviderascompany3gallery',
          builder: (context, params) =>
              const Cbecomeproviderascompany3galleryWidget(),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany4pricing',
          path: '/cbecomeproviderascompany4pricing',
          builder: (context, params) =>
              const Cbecomeproviderascompany4pricingWidget(),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany5terms',
          path: '/cbecomeproviderascompany5terms',
          builder: (context, params) => const Cbecomeproviderascompany5termsWidget(),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany6publish',
          path: '/cbecomeproviderascompany6publish',
          builder: (context, params) =>
              const Cbecomeproviderascompany6publishWidget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer1',
          path: '/pbecomeprovideraspeer1',
          asyncParams: {
            'servicecategoriesPP':
                getDoc(['servicecategory'], ServicecategoryRecord.fromSnapshot),
            'servcat2':
                getDoc(['servcategory2'], Servcategory2Record.fromSnapshot),
          },
          builder: (context, params) => Pbecomeprovideraspeer1Widget(
            servicecategoriesPP: params.getParam(
              'servicecategoriesPP',
              ParamType.Document,
            ),
            servcat2: params.getParam(
              'servcat2',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Cbecomeproviderascompany2bankaccount',
          path: '/cbecomeproviderascompany2bankaccount',
          builder: (context, params) =>
              const Cbecomeproviderascompany2bankaccountWidget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer2',
          path: '/pbecomeprovideraspeer2',
          builder: (context, params) => const Pbecomeprovideraspeer2Widget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer3',
          path: '/pbecomeprovideraspeer3',
          builder: (context, params) => const Pbecomeprovideraspeer3Widget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer4',
          path: '/Pbecomeprovideraspeer4',
          builder: (context, params) => const Pbecomeprovideraspeer4Widget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer5',
          path: '/pbecomeprovideraspeer5',
          builder: (context, params) => const Pbecomeprovideraspeer5Widget(),
        ),
        FFRoute(
          name: 'Pbecomeprovideraspeer6',
          path: '/pbecomeprovideraspeer6',
          builder: (context, params) => const Pbecomeprovideraspeer6Widget(),
        ),
        FFRoute(
          name: 'CLICKEDCATEGORY',
          path: '/clickedcategory',
          asyncParams: {
            'service':
                getDoc(['servicecategory'], ServicecategoryRecord.fromSnapshot),
          },
          builder: (context, params) => ClickedcategoryWidget(
            service: params.getParam(
              'service',
              ParamType.Document,
            ),
            category2: params.getParam(
              'category2',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Myservicedisfunctionalpage',
          path: '/myservicedisfunctionalpage',
          builder: (context, params) => const MyservicedisfunctionalpageWidget(),
        ),
        FFRoute(
          name: 'Myserviceffollowupprofile',
          path: '/myserviceffollowupprofile',
          builder: (context, params) => const MyserviceffollowupprofileWidget(),
        ),
        FFRoute(
          name: 'SupportHelp',
          path: '/supportHelp',
          builder: (context, params) => const SupportHelpWidget(),
        ),
        FFRoute(
          name: 'SupportTermsofservice',
          path: '/supportTermsofservice',
          builder: (context, params) => const SupportTermsofserviceWidget(),
        ),
        FFRoute(
          name: 'SupportTrustandSafety',
          path: '/supportTrustandSafety',
          builder: (context, params) => const SupportTrustandSafetyWidget(),
        ),
        FFRoute(
          name: 'AboutOurOffertoSeniors',
          path: '/aboutOurOffertoSeniors',
          builder: (context, params) => const AboutOurOffertoSeniorsWidget(),
        ),
        FFRoute(
          name: 'AboutLuxembourgNews',
          path: '/aboutLuxembourgNews',
          builder: (context, params) => const AboutLuxembourgNewsWidget(),
        ),
        FFRoute(
          name: 'AboutAccredition',
          path: '/aboutAccredition',
          builder: (context, params) => const AboutAccreditionWidget(),
        ),
        FFRoute(
          name: 'Corporateserviceswithcompany',
          path: '/corporateserviceswithcompany',
          builder: (context, params) => const CorporateserviceswithcompanyWidget(),
        ),
        FFRoute(
          name: 'Corporateservicespeertopeer',
          path: '/corporateservicespeertopeer',
          builder: (context, params) => const CorporateservicespeertopeerWidget(),
        ),
        FFRoute(
          name: 'Corporateservicespartnerships',
          path: '/corporateservicespartnerships',
          builder: (context, params) => const CorporateservicespartnershipsWidget(),
        ),
        FFRoute(
          name: 'Corporateservicesmarketing',
          path: '/corporateservicesmarketing',
          builder: (context, params) => const CorporateservicesmarketingWidget(),
        ),
        FFRoute(
          name: 'ClickedServiceFromExploreAlgolia',
          path: '/clickedServiceFromExploreAlgolia',
          asyncParams: {
            'servref': getDoc(['service'], ServiceRecord.fromSnapshot),
          },
          builder: (context, params) => ClickedServiceFromExploreAlgoliaWidget(
            servref: params.getParam(
              'servref',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'PerhourforPHONE',
          path: '/perhourforPHONE',
          asyncParams: {
            'clickedpricingtemplate1':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => PerhourforPHONEWidget(
            clickedpricingtemplate1: params.getParam(
              'clickedpricingtemplate1',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'selectoptions',
          path: '/selectoptions',
          builder: (context, params) => const SelectoptionsWidget(),
        ),
        FFRoute(
          name: 'PersessionPHONE',
          path: '/persessionPHONE',
          asyncParams: {
            'clickedpricingtemplate2':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => PersessionPHONEWidget(
            clickedpricingtemplate2: params.getParam(
              'clickedpricingtemplate2',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'PerproductPHONE',
          path: '/perproductPHONE',
          asyncParams: {
            'clickedpricingtemplate4':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => PerproductPHONEWidget(
            clickedpricingtemplate4: params.getParam(
              'clickedpricingtemplate4',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MyActivitiesfollowupprofile',
          path: '/myActivitiesfollowupprofile',
          builder: (context, params) => const MyActivitiesfollowupprofileWidget(),
        ),
        FFRoute(
          name: 'Supportprivacypolicy',
          path: '/supportprivacypolicy',
          builder: (context, params) => const SupportprivacypolicyWidget(),
        ),
        FFRoute(
          name: 'perprogrammPHONE',
          path: '/perprogrammPHONE',
          asyncParams: {
            'clickedpricingtemplate3':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => PerprogrammPHONEWidget(
            clickedpricingtemplate3: params.getParam(
              'clickedpricingtemplate3',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'A1FirstPage',
          path: '/a1FirstPage',
          builder: (context, params) => const A1FirstPageWidget(),
        ),
        FFRoute(
          name: 'A3BuyerRegistration',
          path: '/a3BuyerRegistration',
          builder: (context, params) => const A3BuyerRegistrationWidget(),
        ),
        FFRoute(
          name: 'A2BuyerLogin',
          path: '/a2BuyerLogin',
          builder: (context, params) => const A2BuyerLoginWidget(),
        ),
        FFRoute(
          name: 'A4ForgotPasswordLink',
          path: '/a4ForgotPasswordLink',
          builder: (context, params) => const A4ForgotPasswordLinkWidget(),
        ),
        FFRoute(
          name: 'A5SellerRegistration',
          path: '/a5SellerRegistration',
          builder: (context, params) => const A5SellerRegistrationWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowupaccounttypes',
          path: '/supporthelpfollowupaccounttypes',
          builder: (context, params) => const SupporthelpfollowupaccounttypesWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowuppayments',
          path: '/supporthelpfollowuppayments',
          builder: (context, params) => const SupporthelpfollowuppaymentsWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowupguidelines',
          path: '/supporthelpfollowupguidelines',
          builder: (context, params) => const SupporthelpfollowupguidelinesWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowuppublicdemands',
          path: '/supporthelpfollowuppublicdemands',
          builder: (context, params) =>
              const SupporthelpfollowuppublicdemandsWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowupselling',
          path: '/supporthelpfollowupselling',
          builder: (context, params) => const SupporthelpfollowupsellingWidget(),
        ),
        FFRoute(
          name: 'Supporthelpfollowupbuying',
          path: '/supporthelpfollowupbuying',
          builder: (context, params) => const SupporthelpfollowupbuyingWidget(),
        ),
        FFRoute(
          name: 'yprofilepageEditProfile',
          path: '/yprofilepageEditProfile',
          builder: (context, params) => const YprofilepageEditProfileWidget(),
        ),
        FFRoute(
          name: 'xprofilepageEditService',
          path: '/xprofilepageEditService',
          builder: (context, params) => const XprofilepageEditServiceWidget(),
        ),
        FFRoute(
          name: 'vEditservicegallery',
          path: '/vEditservicegallery',
          asyncParams: {
            'editservicegallery':
                getDoc(['service'], ServiceRecord.fromSnapshot),
          },
          builder: (context, params) => VEditservicegalleryWidget(
            editservicegallery: params.getParam(
              'editservicegallery',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ClickedPublicDemandWithChat',
          path: '/clickedPublicDemandWithChat',
          asyncParams: {
            'clickedpublicdemand':
                getDoc(['publicdemand'], PublicdemandRecord.fromSnapshot),
          },
          builder: (context, params) => ClickedPublicDemandWithChatWidget(
            clickedpublicdemand: params.getParam(
              'clickedpublicdemand',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'PublicDemandList',
          path: '/publicDemandList',
          builder: (context, params) => const PublicDemandListWidget(),
        ),
        FFRoute(
          name: 'usageforpayselectionphone',
          path: '/usageforpayselectionphone',
          builder: (context, params) => const UsageforpayselectionphoneWidget(),
        ),
        FFRoute(
          name: 'MyPerhourforPHONE',
          path: '/myPerhourforPHONE',
          asyncParams: {
            'myperhour':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => MyPerhourforPHONEWidget(
            myperhour: params.getParam(
              'myperhour',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MyPerproductPHONE',
          path: '/myPerproductPHONE',
          asyncParams: {
            'myperproduct':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => MyPerproductPHONEWidget(
            myperproduct: params.getParam(
              'myperproduct',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MyperprogrammPHONE',
          path: '/myperprogrammPHONE',
          asyncParams: {
            'myperprogram':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => MyperprogrammPHONEWidget(
            myperprogram: params.getParam(
              'myperprogram',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MyPersessionPHONE',
          path: '/myPersessionPHONE',
          asyncParams: {
            'mypersession':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => MyPersessionPHONEWidget(
            mypersession: params.getParam(
              'mypersession',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'checkoutperhourPHONE',
          path: '/checkoutperhourPHONE',
          asyncParams: {
            'checkoutperhourPH':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => CheckoutperhourPHONEWidget(
            checkoutperhourPH: params.getParam(
              'checkoutperhourPH',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'checkoutpersessionPHONE',
          path: '/checkoutpersessionPHONE',
          asyncParams: {
            'checkoutpersessionPH':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => CheckoutpersessionPHONEWidget(
            checkoutpersessionPH: params.getParam(
              'checkoutpersessionPH',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'checkoutperprogramPHONE',
          path: '/checkoutperprogramPHONE',
          asyncParams: {
            'checkoutperprogramPH':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => CheckoutperprogramPHONEWidget(
            checkoutperprogramPH: params.getParam(
              'checkoutperprogramPH',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'checkoutperproductPHONE',
          path: '/checkoutperproductPHONE',
          asyncParams: {
            'checkoutperproductPH':
                getDoc(['pricingtemplate'], PricingtemplateRecord.fromSnapshot),
          },
          builder: (context, params) => CheckoutperproductPHONEWidget(
            checkoutperproductPH: params.getParam(
              'checkoutperproductPH',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'P1createpromoteaccount',
          path: '/p1createpromoteaccount',
          asyncParams: {
            'category': getDoc(['service'], ServiceRecord.fromSnapshot),
            'category2':
                getDoc(['servcategory2'], Servcategory2Record.fromSnapshot),
          },
          builder: (context, params) => P1createpromoteaccountWidget(
            category: params.getParam(
              'category',
              ParamType.Document,
            ),
            category2: params.getParam(
              'category2',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'P2createpromoteaccount',
          path: '/p2createpromoteaccount',
          builder: (context, params) => const P2createpromoteaccountWidget(),
        ),
        FFRoute(
          name: 'p4createpromoteaccount',
          path: '/p4createpromoteaccount',
          builder: (context, params) => const P4createpromoteaccountWidget(),
        ),
        FFRoute(
          name: 'p5createpromoteaccount',
          path: '/p5createpromoteaccount',
          builder: (context, params) => const P5createpromoteaccountWidget(),
        ),
        FFRoute(
          name: 'p11createpromoteaccount',
          path: '/p11createpromoteaccount',
          builder: (context, params) => const P11createpromoteaccountWidget(),
        ),
        FFRoute(
          name: 'p3createpromoteaccount',
          path: '/p3createpromoteaccount',
          builder: (context, params) => const P3createpromoteaccountWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/a1FirstPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
