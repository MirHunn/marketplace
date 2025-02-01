import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'de'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? deText = '',
  }) =>
      [enText, frText, deText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Weeklytimemanagerprofile
  {
    '55toiu5u': {
      'en': 'This Week',
      'de': '',
      'fr': '',
    },
    'pinmae4t': {
      'en': 'Monday',
      'de': '',
      'fr': '',
    },
    'euwgitji': {
      'en': 'Tuesday',
      'de': '',
      'fr': '',
    },
    'p6gxh03y': {
      'en': 'Wednesday',
      'de': '',
      'fr': '',
    },
    'nq2h7y29': {
      'en': 'Thursday',
      'de': '',
      'fr': '',
    },
    '3wbxhbgd': {
      'en': 'Friday',
      'de': '',
      'fr': '',
    },
    'q6j9uo5m': {
      'en': 'Saturday',
      'de': '',
      'fr': '',
    },
    'smvywe8v': {
      'en': 'Sunday',
      'de': '',
      'fr': '',
    },
    '14oisxyx': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
    },
  },
  // Dashboard
  {
    'jntihpp6': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'kghoj7o9': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    '8gmy4gs6': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'bbzib422': {
      'en': 'Categories',
      'de': '',
      'fr': '',
    },
    '2lh78rck': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    'z1vg2pm3': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'gehufy6n': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    '4rgwsx00': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    '1hiluqdv': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'to6mafbb': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'c1uj3741': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    'z6xhnnbc': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'dno5neoz': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'nj3zzgbs': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    '6bfr9w9e': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'rq1rvqpy': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'evhdupjm': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'y7fsdv7i': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    '1ckfztcu': {
      'en': 'Dashboard',
      'de': '',
      'fr': '',
    },
    '0koh880j': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Explore
  {
    'yezyan96': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'vr1swlkj': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    'bkmyhk91': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'nuhobbef': {
      'en':
          'Make a demand public and attract the right MirHunn Service Provider. ',
      'de': '',
      'fr': '',
    },
    'e3j1kns4': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '38ufnl6y': {
      'en': 'Click here to see their proposals',
      'de': '',
      'fr': '',
    },
    'm0m7uvds': {
      'en': '24',
      'de': '',
      'fr': '',
    },
    'lqohspmu': {
      'en': '12h',
      'de': '',
      'fr': '',
    },
    '95faju63': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    '8z6ky5sh': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'kwa6zmdy': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'oad9ooyj': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'mvi6kkdz': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'kzsm1n99': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'mld99wqm': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    'vy0zenl9': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '3ebrdq5k': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    '5ym86xna': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    '6w2sknky': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'd23uelwy': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'uveove47': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'vrajsto3': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'sst3q50v': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    '0ja2m6t8': {
      'en':
          'Make a demand public and attract the right MirHunn service provider. ',
      'de': '',
      'fr': '',
    },
    'zdopfp05': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '7e998dob': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // LuxembourgNews
  {
    'sk99sw1z': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'rdbfyf5m': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    '51lp5qeb': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'swmeb3bn': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    '6o6pm6ua': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    '56sgrg39': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'm97qyuam': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'dsnp3mmk': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'qjp2kp74': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    '5tfn1ugy': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    'y7z0yfen': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '9awerl7k': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'quu7hrso': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    'soc7gch4': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'lbfkttri': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'g9yspsjn': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    '3tg7anjn': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'pb1db8ql': {
      'en': 'Newsletter',
      'de': '',
      'fr': '',
    },
    'izxfpvyd': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // aProfileMyProfile
  {
    'jwf34jpv': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'ohwarv2o': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    'ary24166': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '9o5wqukz': {
      'en': 'Profile Details',
      'de': '',
      'fr': '',
    },
    'e2cakptg': {
      'en': 'Display Name',
      'de': '',
      'fr': '',
    },
    'ovyo0hjj': {
      'en': 'Email',
      'de': '',
      'fr': '',
    },
    'gbsw3fg1': {
      'en': 'Phone Number',
      'de': '',
      'fr': '',
    },
    'cyflhnqs': {
      'en': 'City',
      'de': '',
      'fr': '',
    },
    'h7pehjxy': {
      'en': 'Street Address',
      'de': '',
      'fr': '',
    },
    'p1ybxykz': {
      'en': 'Postal Code',
      'de': '',
      'fr': '',
    },
    'webn10nv': {
      'en': 'My activities',
      'de': '',
      'fr': '',
    },
    'ssxc07wr': {
      'en': 'My service',
      'de': '',
      'fr': '',
    },
    'lca892fm': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    '055ophp8': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'urvkvijj': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'evr75l0o': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'tvysz2zp': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'm5rzijss': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'ed64iwio': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    '9jz2nkm2': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'tanqku62': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'e7du3xhr': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    'zwqpndby': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'oyfk0yon': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'm1wdvzpp': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    '0aot5g7x': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    '3eg38cim': {
      'en': 'Profile Details',
      'de': '',
      'fr': '',
    },
    'm0fvftbe': {
      'en': 'Display Name',
      'de': '',
      'fr': '',
    },
    'swyt0n0r': {
      'en': 'Email',
      'de': '',
      'fr': '',
    },
    '21rrn0jr': {
      'en': 'Phone Number',
      'de': '',
      'fr': '',
    },
    'r0s7ep6b': {
      'en': 'City',
      'de': '',
      'fr': '',
    },
    'rkuauv24': {
      'en': 'Street Address',
      'de': '',
      'fr': '',
    },
    'mnq8el58': {
      'en': 'Postal Code',
      'de': '',
      'fr': '',
    },
    'ktcfr7m7': {
      'en': 'My activities',
      'de': '',
      'fr': '',
    },
    '1qgcy95i': {
      'en': 'My service',
      'de': '',
      'fr': '',
    },
    'gfuh4mq5': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // eProfileHelpTutorial
  {
    'cjhjwds8': {
      'en': 'Search by category',
      'de': '',
      'fr': '',
    },
    '20potuti': {
      'en': 'Your MirHunn account',
      'de': '',
      'fr': '',
    },
    'ifqmh34c': {
      'en': 'Payments & withdrawals',
      'de': '',
      'fr': '',
    },
    'c2iobry1': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'q2sgid4u': {
      'en': 'Regulations & guidelines',
      'de': '',
      'fr': '',
    },
    'fp6re60a': {
      'en': 'Published demands',
      'de': '',
      'fr': '',
    },
    '24jjqb96': {
      'en': 'Buying',
      'de': '',
      'fr': '',
    },
    'gng2wdb4': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'mw7x6c9z': {
      'en': 'Selling',
      'de': '',
      'fr': '',
    },
    'lccyjlqq': {
      'en': 'Can\'t find what you\'re looking for?',
      'de': '',
      'fr': '',
    },
    'doeeutgg': {
      'en': 'We\'re here to help.',
      'de': '',
      'fr': '',
    },
    'iw132xls': {
      'en': 'Contact us',
      'de': '',
      'fr': '',
    },
    'zcbk4pus': {
      'en': 'Search by category',
      'de': '',
      'fr': '',
    },
    'xb5ruap2': {
      'en': 'Your MirHunn account',
      'de': '',
      'fr': '',
    },
    'qmq6vrf2': {
      'en': 'Payments & withdrawals',
      'de': '',
      'fr': '',
    },
    'qtu0yluu': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'g6vm4dmk': {
      'en': 'Regulations & guidelines',
      'de': '',
      'fr': '',
    },
    'l3xn1qcu': {
      'en': 'Published demands',
      'de': '',
      'fr': '',
    },
    'kmbyw24w': {
      'en': 'Buying',
      'de': '',
      'fr': '',
    },
    'f5kuvfl7': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    '9pzlauzu': {
      'en': 'Selling',
      'de': '',
      'fr': '',
    },
    '7hrtrm63': {
      'en': 'Can\'t find what you\'re looking for?',
      'de': '',
      'fr': '',
    },
    'bp0mnlcb': {
      'en': 'We\'re here to help.',
      'de': '',
      'fr': '',
    },
    'raoxhiaq': {
      'en': 'Contact us',
      'de': '',
      'fr': '',
    },
    'vqwbfu5h': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // cbecomeprovider1
  {
    'ynq3ctwt': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'xl1gf4b1': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    'yc83rps0': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '05bsaw4m': {
      'en': 'Become a Provider',
      'de': '',
      'fr': '',
    },
    '9dv6cxbk': {
      'en': 'Continue as Company',
      'de': '',
      'fr': '',
    },
    'xsuon7ur': {
      'en':
          'Join MirHunn to reach local customers, increase visibility, manage services flexibly, and grow your business in a secure marketplace.',
      'de': '',
      'fr': '',
    },
    '5n3bl3ap': {
      'en': 'Continue as a Peer to Peer provider',
      'de': '',
      'fr': '',
    },
    '7wjdn9vp': {
      'en':
          'Share your skills, talents, or innovations on MirHunn, connect with local clients, and turn your passion into income—all on your terms.',
      'de': '',
      'fr': '',
    },
    's5hgxyuk': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    'es0b223x': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'cappvaw9': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'i0tca03q': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'qssg8a12': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'f63deeya': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'krsbwuoj': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    '0bh9kcp2': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'o1axaquu': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'qi95q127': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    'wzobx1pz': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    '9b4ycc57': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    '1yx8bzqh': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'gruvdfqy': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'ist2pugn': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany1info
  {
    '8mg6rql9': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'o2pvwm78': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'xl21bzjb': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'i06dts4r': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    '0cvd81w2': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'p6y6iynt': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'kzfs0mwb': {
      'en': 'Registration Number of the Company',
      'de': '',
      'fr': '',
    },
    'jbloowqj': {
      'en': 'Category',
      'de': '',
      'fr': '',
    },
    'gju2n48h': {
      'en': 'Description of your Company',
      'de': '',
      'fr': '',
    },
    'vhkkb4kb': {
      'en': 'Tell us something about your company',
      'de': '',
      'fr': '',
    },
    'rx7qc7zi': {
      'en': 'Number...',
      'de': '',
      'fr': '',
    },
    'nttposhj': {
      'en': 'Select...',
      'de': '',
      'fr': '',
    },
    'j3bl3226': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '7zs1nezb': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'i303afgc': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '06q07ape': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '9k0sexhe': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'pxhuozoe': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '166odci5': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'kvsgcg3l': {
      'en': 'Description...',
      'de': '',
      'fr': '',
    },
    'kaopa4jx': {
      'en': 'About you...',
      'de': '',
      'fr': '',
    },
    '0t2gciq4': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany3gallery
  {
    'e0t5447h': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'jfon0e42': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'tnrv0rsf': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '1uljspnn': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    '8gn8z6w9': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    '0ispsayl': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'z1xqwkmp': {
      'en': '1. Choose a main picture',
      'de': '',
      'fr': '',
    },
    'xd1b3ae0': {
      'en': '2. Choose a background picture',
      'de': '',
      'fr': '',
    },
    'q4u996vv': {
      'en': '3. Upload more pictures',
      'de': '',
      'fr': '',
    },
    'u7cke8k9': {
      'en':
          '( any type of certification would be effective for your provided service to be accepted by MH)',
      'de': '',
      'fr': '',
    },
    '9sf2b23b': {
      'en': 'Add Photos',
      'de': '',
      'fr': '',
    },
    '1jk4wici': {
      'en': '4. Upload a video',
      'de': '',
      'fr': '',
    },
    '26czrr0e': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    '5u43178h': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'o1sckwy9': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    '7vhss9tn': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'w2q55m0k': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    '3dc5s1f1': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    '03h71k7d': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    'me7qosng': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '7qlg3dv0': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'z1a44gue': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    '2xjar1fa': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'hcnycft0': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'v125fi38': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'ywafa6l1': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    '4lebxykg': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany4pricing
  {
    'hf6ca7m2': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    '4hqsth32': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'bl9zlykk': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'ltp6ntz7': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'eb93svmb': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'ca428gyb': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'bbhbh1e6': {
      'en': 'Per Hour',
      'de': '',
      'fr': '',
    },
    'ikioy3z5': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'hbgcicna': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'jiubx9jf': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'ufqnm53g': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    'ol6isee4': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    's9x8j97d': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    'm8zaorhd': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'tvorldg7': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'vga8r5h4': {
      'en': 'Per Session',
      'de': '',
      'fr': '',
    },
    'iwb9977s': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'zftp7ufd': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    '5coua2k0': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'fczrz53n': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    '3xkryu4g': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    '4sfxrym7': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    'v6n8g4fp': {
      'en': 'Price of the session',
      'de': '',
      'fr': '',
    },
    '4h6wlpmr': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'njv3ulgm': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'ctbsvcah': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'upn2278m': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    'bmi3e6uu': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    '0wjmnw9z': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    'bd65gk8d': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    '5gzb68ef': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    '0lbamy4w': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'm4tufh4n': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'muftjh63': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'se2de574': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    'opkkcrjo': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'l3c2aems': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    't6w11vrb': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    'xea9lzri': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    '97yt1lbk': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'y95hpxf8': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    'd7votdis': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    'zq4mfc9s': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'mc20abqx': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    '7smhc3mp': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'imu247ju': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    '1b7pstsu': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    '7ik1jkov': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'yx5rbx9h': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'y8bmv8c3': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '9dtji0r8': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'w318ast5': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    'q9wxukk7': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'qzs9bgr1': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'efhi0x2l': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'wyu2e4g1': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    'kovqbwwx': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    'wjj9myix': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    '8ssp1808': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    '6ruup65f': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'a5mp1853': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'u3z1173a': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    '7j19th7s': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'aoab6rqm': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    '7r6y3qo0': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'zg6xm485': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'ush6pdlm': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'bdvthppm': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'wttozfi4': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    '9bttb9sz': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    '59yc5qbi': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    'wa3q16tu': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    'p1jqfrie': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'h4c799hn': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'fb3tljnz': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'vzagc81g': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    't2bzixzz': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    't22gphvv': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    '97led56g': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    '24nnwgii': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'tu1om3jz': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'tuurbrrk': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'qaigy7xw': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'c7uhc00n': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'owz3av05': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    '4uxpyqx7': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    '2adkc3lk': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    'oup7tte1': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    '9opmjyty': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'je0ji8bk': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    '5e667i77': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    've4s282m': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    '3ia1m6vy': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'q8e7tzw9': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    '91yvuvru': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'y6t1jjlt': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'a8y7lnu8': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    'qti7hisn': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'uj5o5p7s': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    's3fdaytw': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'hnbyxxn1': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'z5gt0ld7': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    'hfst2qrg': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    '31gsdhaz': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    '9sc4zeim': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'oof3kir6': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    'o8xycyd4': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    'u98c64dd': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    '8jpaycd0': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    'x9icr475': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'l2vlyj6s': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'cggmlycm': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    '9vs3rmf2': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'ab7hlyg2': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    '8cvyxifv': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'lilecz81': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'w5tikoo4': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'avmqu9kq': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'hnhr0c0s': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    'p7nh4vnx': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    'cksprur2': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    '6k2jkfpb': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    'nsyiv6j8': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    '1t2gy3h9': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'e96qtte5': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'imuk2fkn': {
      'en': 'Monday',
      'de': '',
      'fr': '',
    },
    'mklamrfi': {
      'en': 'Tuesday',
      'de': '',
      'fr': '',
    },
    'xs8q9a4k': {
      'en': 'Wednesday',
      'de': '',
      'fr': '',
    },
    'wjofgzgt': {
      'en': 'Thursday',
      'de': '',
      'fr': '',
    },
    'kluv7aa8': {
      'en': 'Friday',
      'de': '',
      'fr': '',
    },
    'i552zcuq': {
      'en': 'Saturday',
      'de': '',
      'fr': '',
    },
    'rz9lh1f1': {
      'en': 'Sunday',
      'de': '',
      'fr': '',
    },
    '1umido51': {
      'en': 'Choose the duration of the session in weeks',
      'de': '',
      'fr': '',
    },
    '6p58i9gn': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'nm4hscae': {
      'en': '1 Week',
      'de': '',
      'fr': '',
    },
    '7r70ju8e': {
      'en': '2 Weeks',
      'de': '',
      'fr': '',
    },
    '3gxq0wc5': {
      'en': '3 Weeks',
      'de': '',
      'fr': '',
    },
    't8lha2jq': {
      'en': '4 Weeks',
      'de': '',
      'fr': '',
    },
    'c5txdya4': {
      'en': '5 Weeks',
      'de': '',
      'fr': '',
    },
    '0gvgfcgq': {
      'en': '6 Weeks',
      'de': '',
      'fr': '',
    },
    '734zkvyf': {
      'en': '7 Weeks',
      'de': '',
      'fr': '',
    },
    'pbahspk6': {
      'en': '8 Weeks',
      'de': '',
      'fr': '',
    },
    '0jdndrmn': {
      'en': '9 Weeks',
      'de': '',
      'fr': '',
    },
    '80baei1k': {
      'en': '10 Weeks',
      'de': '',
      'fr': '',
    },
    'p1vj6uj3': {
      'en': '+ 10 Weeks',
      'de': '',
      'fr': '',
    },
    'hhbwclkh': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    'bmtyu6iz': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'hmt92k0h': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    'i8evgo1n': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '5hz17v0l': {
      'en': 'Select the Location',
      'de': '',
      'fr': '',
    },
    'ejcpn3sw': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'pt51o5ml': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    'rfz9ysg4': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    '7ojogtfu': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    'tci8wvpd': {
      'en': 'Price of the program',
      'de': '',
      'fr': '',
    },
    'tp920hju': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'r67v7hip': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'nk5hv24g': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'hfygxt5v': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    'z6rdisaa': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    'jtb48gd5': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    'r6gzrtu2': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'hnq5ow9f': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'sd53jk4l': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'adv84vj7': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'xbgzlr68': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'qpr4t5hy': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    'vdvhvtvh': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'n96xqcyr': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    'uiel75tc': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    '3qtscdx9': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'lom8ervv': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'pc6677cw': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    '88ey0vym': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    'nqrbhlty': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'eyrrz6a4': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    'h084fcme': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'izr9oaa5': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'b4s1g3v1': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    '65s4odqq': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'ywqt6thc': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'xtqn489c': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '2te6ebs2': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'rhe8pk4g': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    '2f49s7l4': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'mrmuh7e4': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'bmozckfh': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'zz5ywne3': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    '3ubpiicj': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    'k3d562lv': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    'ft4f1ayx': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    '7k9r71v2': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'sm7fgkk2': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    '18guf2kr': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    'wr56f0r3': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'x9q0431z': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    '6zlu7n1c': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    '65eg1omt': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'y470rscd': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'awbzo4ta': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'm6i0tw3f': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    'kp83p1vu': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    '6nelpgw3': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    '1p3rw7y6': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    '3wizcdfr': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'arf371g3': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'hlcbv93c': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'bm5odmlg': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'vht5w1g0': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    'hgtdl480': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    'xnpxlxtj': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    '1abo18c9': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    '4wt5onx2': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'xeb81ll8': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    '45hgrh85': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    '4g6qjo03': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'vxdfc1vy': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    '10xqxqcq': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'j0vmbu2t': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    '71c9c53x': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    'uns4lx12': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'uvfwhhni': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'jfikt05d': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    'dat43e8u': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    'inswjje9': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'ze10xl0e': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    's1jpy6d4': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'yqi1gmen': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'ai5v4p47': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    'xaiy6ehr': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    '0is4slag': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'dpeomf35': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'onxeim27': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'kxyarsma': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    '235zjm9f': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    '1hxienls': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'm4ytnx03': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'qwwfk0ma': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    '1rmbp887': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    '8sp6df26': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    'bkl30z3e': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    'bt03vzl8': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    '4t441sqh': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'xsu9jfjj': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    'xkdqztdk': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    '294epar1': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    '1mczayy1': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'zspirb9r': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'devfb9u3': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'yuwy3541': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'yud2i0ky': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    '67ddxxxe': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    '123t8iti': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    '5075exkc': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    '1kj0el91': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    '1tnghegb': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'd9rbnclf': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'h0np01z1': {
      'en': 'Monday',
      'de': '',
      'fr': '',
    },
    'pl35cant': {
      'en': 'Tuesday',
      'de': '',
      'fr': '',
    },
    'jmm9qm1s': {
      'en': 'Wednesday',
      'de': '',
      'fr': '',
    },
    '8vr1xkee': {
      'en': 'Thursday',
      'de': '',
      'fr': '',
    },
    'n9bwgmj2': {
      'en': 'Friday',
      'de': '',
      'fr': '',
    },
    '42ylf1fh': {
      'en': 'Saturday',
      'de': '',
      'fr': '',
    },
    '248gmoc8': {
      'en': 'Sunday',
      'de': '',
      'fr': '',
    },
    'igp1qzpk': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'qrn8ll7g': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'a1af37tz': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '0k3lw0ao': {
      'en': 'Price',
      'de': '',
      'fr': '',
    },
    '8qgag6tg': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'tvk5ha0l': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'qo54fbr7': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'bdgrszjx': {
      'en': 'Seller delivers',
      'de': '',
      'fr': '',
    },
    'lmaflro7': {
      'en': 'Buyer picks up',
      'de': '',
      'fr': '',
    },
    'vte0c0i4': {
      'en': 'Digital',
      'de': '',
      'fr': '',
    },
    '539136jg': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'hemgltlh': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany5terms
  {
    'b6uq4du2': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'jg7axql4': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'zwvr8tpw': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '5m3nxqsm': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    '2237tan4': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    '7sduxadq': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'ryiqrpod': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'oerb89xk': {
      'en':
          'Terms of Service for Companies on MirHunn\n\n\nWelcome to MirHunn, a marketplace platform where companies can offer their services to Luxembourgish citizens. By registering as a company and using our platform, you agree to the following Terms of Service. Please read them carefully.\n\n1. Acceptance of Terms\nBy accessing or using the MirHunn platform as a company, you agree to be bound by these Terms of Service and any applicable laws and regulations. If you do not agree with these terms, you may not use the platform.\n\n2. Eligibility\nCompanies using MirHunn must be legally registered and compliant with all applicable business laws and tax regulations in Luxembourg. You agree to provide accurate and up-to-date information about your company during registration and to update this information as necessary.\n\n3. Services\nAs a registered company, you are allowed to offer your services through the MirHunn platform. You are responsible for the quality, legality, and compliance of the services you provide. All services must adhere to local regulations and must not infringe on third-party rights.\n\n4. Service Fees and Payments\nMirHunn charges an 8% commission on every transaction completed through the platform.\nPayments are processed through Stripe Connect, which allows us to manage transactions on your behalf. You will not need to create or manage a Stripe account directly.\nYou will be required to provide your bank account details for payouts.\nPayouts to your company will be made according to Stripe’s payout schedule and rules.\n\n5. Company Responsibilities\nYou are solely responsible for:\nDelivering the services you offer on the platform as agreed upon with the customer.\nHandling any customer disputes, complaints, or refunds in accordance with your own policies.\nEnsuring that all necessary permissions, certifications, and insurances are in place for the services you provide.\n\n6. Failure to Provide Services\nIf MirHunn receives credible information that a customer did not receive the service they paid for, we will investigate the situation. In cases where a resolution cannot be reached, and there is evidence of fraud or misconduct, MirHunn reserves the right to involve local authorities, including the Luxembourg police. Legal action may be taken against service providers who fail to deliver the agreed-upon services.\n\n7. Compliance with Laws\nYou agree to comply with all applicable laws, including but not limited to labor, tax, and commercial laws. It is your responsibility to ensure that all your employees or contractors are legally authorized to work in Luxembourg.\n\n8. Data Protection and Privacy\nMirHunn complies with GDPR regulations. By using the platform, you agree to protect your customers\' personal data and use it only in connection with the services you provide through MirHunn.\n\n9. Termination\nMirHunn reserves the right to suspend or terminate your account at any time, with or without cause, including for violating these Terms of Service or any applicable laws.\n\n10. Limitation of Liability\nMirHunn is not responsible for any disputes arising between you and your customers. You agree that MirHunn’s liability is limited to the service fees paid to the platform and that MirHunn is not responsible for any indirect, incidental, or consequential damages.\n\n11. Amendments\nMirHunn reserves the right to modify these Terms of Service at any time. Changes will be communicated to you and your continued use of the platform will constitute acceptance of the revised terms.\n\n12. Governing Law\nThese Terms of Service are governed by the laws of Luxembourg. Any disputes related to these terms will be settled in the courts of Luxembourg.\n\n',
      'de': '',
      'fr': '',
    },
    'yi57sg2t': {
      'en': 'I accept the terms of service',
      'de': '',
      'fr': '',
    },
    'w0uli1jc': {
      'en': 'I accept privacy policy',
      'de': '',
      'fr': '',
    },
    'nqsbsegt': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany6publish
  {
    'k14c028g': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'q0d8gup3': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'x9hlognr': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'az47xi42': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'mha0x8n7': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    '1e0cht9m': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    '8wnigezn': {
      'en':
          'Congratulations! Your Service is Almost Ready to Go Live!\n\nYou\'ve successfully completed all the steps to create your service. Our team will now review your submission to ensure everything meets our standards.\n\nOnce your service is approved, it will be visible to thousands of users, ready to connect with you. You’ll be able to manage your services, communicate with clients, and track your earnings directly within the app.\n\n\nThank you for joining MirHunn, and good luck with your first transaction!',
      'de': '',
      'fr': '',
    },
    'qaww6hl8': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer1
  {
    '3fz6fxt7': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    '4tamp4lp': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    '6oypy5rk': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'zo9z9v2d': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'pbkzl00f': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    '1z2lid9o': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    '43yhenew': {
      'en': 'Name',
      'de': '',
      'fr': '',
    },
    'knj6jroc': {
      'en': 'Category',
      'de': '',
      'fr': '',
    },
    'mihmi71n': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '4n2138h9': {
      'en': 'Tell us something about you',
      'de': '',
      'fr': '',
    },
    'sug4e71a': {
      'en': 'Name...',
      'de': '',
      'fr': '',
    },
    '2yzbm0ka': {
      'en': 'Select...',
      'de': '',
      'fr': '',
    },
    'iljpqnwm': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'ud7dg34c': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '2bjp8hkd': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '4s65dqcs': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '7xxwskr4': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '5v2422us': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'fzpwvrt6': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'd87lr7bc': {
      'en': 'Describe...',
      'de': '',
      'fr': '',
    },
    'z97nfut2': {
      'en': 'Write here...',
      'de': 'Schreiben Sie hier...',
      'fr': 'Écrivez ici...',
    },
    'j6q3dosu': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Cbecomeproviderascompany2bankaccount
  {
    'zbb9pe9s': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'byv08354': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'u10zywee': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'icsc53m7': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    '5km3nqg6': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'yfcnl9rg': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'z07j9svz': {
      'en':
          '1. Company Name: The registered company name as the account holder',
      'de': '',
      'fr': '',
    },
    'hysaiaqk': {
      'en': '2. IBAN (International Bank Account Number)',
      'de': '',
      'fr': '',
    },
    '8e4o5gyu': {
      'en':
          '3. Bank Name: The name of the bank where the company holds its account',
      'de': '',
      'fr': '',
    },
    'mntvk4fn': {
      'en': '4, VAT Number',
      'de': '',
      'fr': '',
    },
    'ga8o1ckb': {
      'en': 'Company Name...',
      'de': '',
      'fr': '',
    },
    'g10ocfdd': {
      'en': 'IBAN...',
      'de': '',
      'fr': '',
    },
    'vxdkyjm5': {
      'en': 'Bank Name...',
      'de': '',
      'fr': '',
    },
    'rug5wnwe': {
      'en': 'Vat Number...',
      'de': '',
      'fr': '',
    },
    '4cmvf2ox': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer2
  {
    '5f0ux3fh': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'y8gh4436': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'g61fdb3v': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '8q1llrmq': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    '9odfy41w': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'k5o0tnvz': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    '0klte599': {
      'en': '1. Account Holder Name\n',
      'de': '',
      'fr': '',
    },
    '9ww7y2cg': {
      'en': '2. IBAN (International Bank Account Number)',
      'de': '',
      'fr': '',
    },
    'qa42x11d': {
      'en':
          '3. Bank Name: The name of the bank where the company holds its account',
      'de': '',
      'fr': '',
    },
    'kl13j8gx': {
      'en': 'Name...',
      'de': '',
      'fr': '',
    },
    'w76kroll': {
      'en': 'Write here...',
      'de': '',
      'fr': '',
    },
    '92mvm848': {
      'en': 'Write here...',
      'de': '',
      'fr': '',
    },
    'p9fw3w66': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer3
  {
    'uudm115o': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    '44xm03g5': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    '3pnu3yql': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'ozgqqqi0': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'ihnainhc': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'q1xkc5sm': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    '8v83mv4g': {
      'en': '1. Choose a main picture',
      'de': '',
      'fr': '',
    },
    'vcbufv9f': {
      'en': '2. Choose a background picture',
      'de': '',
      'fr': '',
    },
    '3aay1syj': {
      'en': '4. Upload more pictures',
      'de': '',
      'fr': '',
    },
    'glbejig4': {
      'en':
          '( any type of certification would be effective for your provided service to be accepted by MH)',
      'de': '',
      'fr': '',
    },
    'nxh40gk4': {
      'en': 'Add Photos',
      'de': '',
      'fr': '',
    },
    'eguhow7i': {
      'en': '5. Upload a video',
      'de': '',
      'fr': '',
    },
    '2bsgk12j': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer4
  {
    'endwi1dc': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'hx5yj7ef': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    '6a9v9gro': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'c8t7gy7k': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'fpahheey': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'dj8xegi8': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'w9g6jt6w': {
      'en': 'Per Hour',
      'de': '',
      'fr': '',
    },
    '02qepwpw': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '5cewcvtf': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    '1wq9fgq8': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'jwxc7k79': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '3br40yw4': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '7h2plks3': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'oaxyxzef': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'fa8gbpat': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'byiax0uo': {
      'en': 'Per Session',
      'de': '',
      'fr': '',
    },
    'ex3s7fk2': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '5748i6yc': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    '2indnrji': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'hagfz00f': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '3go0xkf0': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'hty5bapd': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'pnbs7pi5': {
      'en': 'Price of the session',
      'de': '',
      'fr': '',
    },
    'vhipsw0p': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'nktd93hh': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '2jdtooci': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '0j2pz9fb': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    't2z1jvx0': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    't7yeo0jq': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'wlbdmb2v': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'ly2vzxhx': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ywzigbll': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'zc6mqkvo': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'k4txao0s': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    '9xzcum4d': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'guqz3lji': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'r3h1myog': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'vtteoxwg': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'mcifzwwj': {
      'en': 'Select during how many weeks (max 4)',
      'de': '',
      'fr': '',
    },
    'oah6qt76': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'gpd66k8k': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '71kvoh26': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '6erq5hff': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'yfhsmq6l': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    'yj98owd0': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '1ky0xpbj': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    'y8gng5do': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'vj006yg4': {
      'en': 'Select the location',
      'de': '',
      'fr': '',
    },
    'e1q196rj': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '50p5ljpo': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'jofjvkkk': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'fsl1qgau': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'sk0jm6c1': {
      'en': 'Price of the program',
      'de': '',
      'fr': '',
    },
    'jg6udsvy': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'b6sj03va': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'xgb7z4ld': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'diqn9xmw': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'ck0id8op': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'cb90hpqr': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'h387368f': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '7c9273sa': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '3s8hr5db': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'pqwkijyt': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'grret75i': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'ik5rod9h': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'zbo2yurs': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'rgtef30j': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'm5up7doq': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '7wq37kgh': {
      'en': 'Select during how many weeks ',
      'de': '',
      'fr': '',
    },
    '9mr9sps2': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'gz85ytui': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'o61r81bo': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '2zjrbyho': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'lwayb6q5': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    '0mz203ww': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '6zv1dxzt': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'jexhq00e': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '5bruztay': {
      'en': 'Price',
      'de': '',
      'fr': '',
    },
    'dk23nuif': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'ofxqu8f1': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'muhe40qa': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'l0s65qm1': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '02ow4g00': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'b5w9vw5o': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'vrdh2rk2': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '9pmmv2qe': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer5
  {
    'o9bsxast': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'i96yz6fx': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'ixr1lgoc': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'mvkrsn6b': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'u8lzy18x': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'o3psg1wk': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'yd41oaxo': {
      'en':
          'Terms of Service for Peer-to-Peer Service Providers\n\nWelcome to MirHunn. By registering as a service provider on our platform, you agree to the following terms and conditions. Please read these terms carefully before using our service.\n\n1. Eligibility\nYou must be at least 18 years old to offer services on MirHunn.\nYou agree to comply with all applicable local laws and regulations, including tax obligations.\n\n2. Account Registration\nYou are required to provide accurate and complete information, including your full name, contact details, and bank account information (IBAN, BIC/SWIFT).\nYou are responsible for maintaining the confidentiality of your account and password.\n\n3. Service Listings\nYou are responsible for accurately describing the services you offer, including pricing, availability, and other relevant details.\nYou agree not to offer illegal services or services that violate local laws and regulations.\n\n4. Payouts and Fees\nMirHunn will process payments through Stripe Connect and deduct an 8% commission from each transaction.\nPayouts will be made to the bank account you provided during registration. You are responsible for ensuring the accuracy of your bank account details.\n\n5. Independent Contractors\nBy using the platform, you acknowledge that you are an independent contractor, not an employee of MirHunn. You are solely responsible for your service offerings, including the quality and delivery of those services.\n\n6. Self-Employment and Legal Obligations\nYou are responsible for any legal obligations related to your services, including registration as self-employed or fulfilling any tax requirements.\nMirHunn does not verify your legal status and will not be held liable for any legal consequences arising from your failure to comply with local laws.\n\n7. Cancellations and Refunds\nYou agree to a fair cancellation and refund policy that aligns with MirHunn’s platform guidelines. Failure to adhere may result in penalties or removal from the platform.\n\n8. Liability\nMirHunn is not liable for any disputes, claims, losses, or damages arising from your services. You assume full responsibility for the services you provide.\n\n9. Termination\nMirHunn reserves the right to suspend or terminate your account if you violate these terms or engage in unlawful or unethical conduct.\n\n10. Modifications to the Terms\nMirHunn reserves the right to modify these Terms of Service at any time. Continued use of the platform after changes constitutes acceptance of the new terms.\n\n11. Governing Law\nThese terms are governed by the laws of Luxembourg. Any disputes will be resolved in the courts of Luxembourg.\n\nBy registering and providing services on MirHunn, you acknowledge that you have read, understood, and agree to abide by these terms.\n\n',
      'de': '',
      'fr': '',
    },
    '19gna2zm': {
      'en': 'I accept the terms of service',
      'de': '',
      'fr': '',
    },
    'tlddpcfe': {
      'en': 'I accept privacy policy',
      'de': '',
      'fr': '',
    },
    'fbf183zj': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Pbecomeprovideraspeer6
  {
    'tcg200l9': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'xydtvs7e': {
      'en': 'Bank Account',
      'de': '',
      'fr': '',
    },
    'nncksvfn': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'y6o3tbsu': {
      'en': 'Pricing',
      'de': '',
      'fr': '',
    },
    'klh64dvl': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'laycklmb': {
      'en': 'Publish',
      'de': '',
      'fr': '',
    },
    'qf1hpd69': {
      'en':
          'Congratulations! Your Service is Almost Ready to Go Live!\n\nYou\'ve successfully completed all the steps to create your service. Our team will now review your submission to ensure everything meets our standards.\n\nOnce your service is approved, it will be visible to thousands of users, ready to connect with you. You’ll be able to manage your services, communicate with clients, and track your earnings directly within the app.\n\n\n\n\nThank you for joining MirHunn, and good luck with your first transaction!',
      'de': '',
      'fr': '',
    },
    'opfaihd4': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // CLICKEDCATEGORY
  {
    'ytmwfxob': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'xwuobqsl': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    'uoeg5agu': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '58qwspwj': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'qojpg3j4': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '011bsbw0': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'qdxsk7cz': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    'avb63k5y': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'ra5l4ph2': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    '4zbv3uu8': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'e53fimma': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'z1tknl3z': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    '15frjreq': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    '9n9h7job': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    '17u7v4e1': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'nkgnspl6': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    'b97mqlwc': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'm2bnvy7c': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'nso170gn': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'f7lhkr98': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'obithi41': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '2fj8qwjr': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '1aabfu8z': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '3yfrsvdv': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Myservicedisfunctionalpage
  {
    'xp6yh3yn': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    'fs3clio1': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '43jdgl2w': {
      'en': 'Certifications',
      'de': '',
      'fr': '',
    },
    'l88bhorq': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    '3auxdw72': {
      'en': 'Per Hour',
      'de': '',
      'fr': '',
    },
    'fz1qowf4': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '9o35i5mk': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    '5pzrva63': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'n1fl8hq7': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '838yia7j': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'w5t7cb69': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'ku8xyuv6': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'thn66jl0': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '1zvxeoey': {
      'en': 'Per Session',
      'de': '',
      'fr': '',
    },
    '8zemvzmp': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '6li3xgmu': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'ez099ve1': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '55bqxkmx': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'njwap9jd': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'nh4o7z2o': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'a7d6jf0c': {
      'en': 'Price of the session',
      'de': '',
      'fr': '',
    },
    'lv8h6br9': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '1bhktdx1': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '5f2yoy2y': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'n9dehw0r': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '6b13q5m9': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'u30nt6yk': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'sxc3zffb': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'bf3c8iac': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'wt0fxhms': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'j5rd1zez': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'o7pgghwp': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'byh3f8go': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '9s7p8gk0': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'po15ll64': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'nn3y2yl5': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'uecdc2e0': {
      'en': 'Select during how many weeks (max 4)',
      'de': '',
      'fr': '',
    },
    '1ztqonui': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'z9wrai1l': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'mr228wa0': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'zwjlph0w': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'xk1gtgsu': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    '3g05fc8i': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '1w7sxppc': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    '4v3oz5qj': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'yxf1gbrk': {
      'en': 'Select the location',
      'de': '',
      'fr': '',
    },
    'knnc098h': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'gzemud9s': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '5ax04hzk': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'qogccjdr': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '7ifkj0go': {
      'en': 'Price of the program',
      'de': '',
      'fr': '',
    },
    '74cwtjlv': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '736hy23b': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'sn1kmxhd': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ati20ele': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'gr42n4f8': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'zh97llih': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'c985u3m2': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'qdqyfmq2': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'm7pp8ly9': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'gyotz7xe': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'mexwuxpj': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'ra703y6r': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'i02wr094': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'z1afmofh': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '4w6wdbvb': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '6cd77ig6': {
      'en': 'Select during how many weeks ',
      'de': '',
      'fr': '',
    },
    'lqricx5i': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'dtkks501': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'uhzuo5fs': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '3ydsii41': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'bl8e1rjz': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    'xojkc7jo': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'ziathzbd': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'gommvuoi': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    '9yul5xwz': {
      'en': 'Price',
      'de': '',
      'fr': '',
    },
    'ksx8pfsn': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'n5bnecef': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'x83wfv28': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'wy9325ft': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '2sxcrynn': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'cp5p1uut': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '020sbxz1': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'c1k9kesc': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Myserviceffollowupprofile
  {
    '4i3awxm9': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    '4t5d7mi9': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'ix1fg2uv': {
      'en': 'Video',
      'de': '',
      'fr': '',
    },
    'hbm3rxkh': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'xnvy17lp': {
      'en': 'Comments Section',
      'de': '',
      'fr': '',
    },
    'u7gmkum9': {
      'en': 'out of 5',
      'de': '',
      'fr': '',
    },
    'dn8ogsm5': {
      'en': ' reviews',
      'de': '',
      'fr': '',
    },
    'zklhbhtl': {
      'en': 'Company Contact Details\n',
      'de': '',
      'fr': '',
    },
    'q2q599i1': {
      'en': 'Email:   ',
      'de': '',
      'fr': '',
    },
    'ywlapizz': {
      'en': 'Phone Number:  ',
      'de': '',
      'fr': '',
    },
    'nuxuem1b': {
      'en': 'Click to visit the promoter\'s social media',
      'de': '',
      'fr': '',
    },
    '1scybeww': {
      'en': 'Click the icon on the right to visit the website',
      'de': '',
      'fr': '',
    },
    'tbs5f2tv': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    '08fb111u': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'auvuc3uj': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'n985ph5e': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'i5i6b5qu': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    't1mt3heu': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'nw32cpwr': {
      'en': 'Price per hour',
      'de': '',
      'fr': '',
    },
    'twralqmb': {
      'en': 'Manage Schedule ',
      'de': '',
      'fr': '',
    },
    '2177nqae': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'qcyoly43': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'x6nio2wg': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '16aej2jl': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '5x10nt1u': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'lsn4xwu9': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'vnfpq9x5': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'a0v8jdy1': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'lhnchgxa': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'xakgszmq': {
      'en': 'Total number of hours',
      'de': '',
      'fr': '',
    },
    'z9n9v8qn': {
      'en': 'Price per session',
      'de': '',
      'fr': '',
    },
    '5jzsisd8': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'yy826d1y': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '3twh3n8m': {
      'en': 'A description about what is offered in this pricing packet',
      'de': '',
      'fr': '',
    },
    '1tr34p17': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'tfksgmii': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '4en7o7ed': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '23fg6ea0': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'vhlzdpsz': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '3wu419a8': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    '90fuql70': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'svx6u0do': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'wex0z4s4': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'u29w35gv': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'kl8xxwi7': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'tjkcu7sg': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    '8hfgfo25': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    '0ttkabrl': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'ahy5mnlb': {
      'en': 'A description about what is offered in this pricing packet',
      'de': '',
      'fr': '',
    },
    'okp4l503': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'c1vtqdvx': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '9e3bv7j2': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '6koip34i': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'xaucella': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    '0ssto33w': {
      'en': '2-6 days',
      'de': '',
      'fr': '',
    },
    '48fngiuc': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'j4qamgst': {
      'en': '2-6 days',
      'de': '',
      'fr': '',
    },
    'quu8r6yd': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'hz0x811u': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    'c19fyaai': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    'jfzcqm2r': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'n9jjft6w': {
      'en': 'Certifications',
      'de': '',
      'fr': '',
    },
    'jetsqh0o': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'f2yd8har': {
      'en': 'Company Contact Details\n',
      'de': '',
      'fr': '',
    },
    'zd06rjkq': {
      'en': 'Email:   ',
      'de': '',
      'fr': '',
    },
    'o9yunjm9': {
      'en': 'Phone Number:  ',
      'de': '',
      'fr': '',
    },
    'cqas7b2m': {
      'en': 'Click to visit the promoter\'s social media',
      'de': '',
      'fr': '',
    },
    '7yl7sr02': {
      'en': 'Click the icon on the right to visit the website',
      'de': '',
      'fr': '',
    },
    '55fymy6h': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'oxq2l7ov': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'cli716tc': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    '118grlvd': {
      'en': '/1hour',
      'de': '',
      'fr': '',
    },
    '6s0kjy5b': {
      'en': 'My Details',
      'de': '',
      'fr': '',
    },
    'i7u96mky': {
      'en': 'Manage Schedule',
      'de': '',
      'fr': '',
    },
    '481wbnc8': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'pbqg29kr': {
      'en': 'Price per Session',
      'de': '',
      'fr': '',
    },
    'ybh3ojtq': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'rwks6gsh': {
      'en': 'My Details',
      'de': '',
      'fr': '',
    },
    't73gov94': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'jzvzd3se': {
      'en': 'Price per Program',
      'de': '',
      'fr': '',
    },
    'ty08av3h': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'rraay8dp': {
      'en': 'My Details',
      'de': '',
      'fr': '',
    },
    'dxf9allw': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'm66ss3n5': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'b0l9ejxp': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'ro6e30z3': {
      'en': 'My Details',
      'de': '',
      'fr': '',
    },
    'duwy5tcz': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // SupportHelp
  {
    'zmwmz0l4': {
      'en': 'Search by category',
      'de': '',
      'fr': '',
    },
    '0138qkf6': {
      'en': 'Your MirHunn account',
      'de': '',
      'fr': '',
    },
    'ip852nz7': {
      'en': 'Payments & withdrawals',
      'de': '',
      'fr': '',
    },
    'zyuz62k0': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    '2dn98112': {
      'en': 'Regulations & guidelines',
      'de': '',
      'fr': '',
    },
    'h56qy9c1': {
      'en': 'Published demands',
      'de': '',
      'fr': '',
    },
    'dqqw2cby': {
      'en': 'Buying',
      'de': '',
      'fr': '',
    },
    'txie7krb': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'uw59ilp0': {
      'en': 'Selling',
      'de': '',
      'fr': '',
    },
    'o60mx5nx': {
      'en': 'Can\'t find what you\'re looking for?',
      'de': '',
      'fr': '',
    },
    '8nyprn0q': {
      'en': 'We\'re here to help.',
      'de': '',
      'fr': '',
    },
    'jtf0of2f': {
      'en': 'Contact',
      'de': '',
      'fr': '',
    },
    'uhuc2eex': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // SupportTermsofservice
  {
    'q5gkbea8': {
      'en': 'Mir Hunns\'s Legal Portal',
      'de': '',
      'fr': '',
    },
    '13bhx0zg': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'qb6j5nmb': {
      'en':
          'Last Update: January 2025\n\nThe following terms of service (these \"Terms of Service\") govern your access to and use of the MirHunn website and mobile application, including any content, functionality, and services offered on or through www.mirhunn.com or the MirHunn mobile application (the \"Site\"). The Site is operated by [MirHunn SARL] (\"we,\" \"us,\" \"MirHunn\"), and the terms \"you\" or \"user\" refer to you as a user of the Site.\n\nBy using the Site, opening an account, or by clicking to accept or agree to the Terms of Service when this option is made available to you, you accept and agree to be bound by these Terms of Service and our Privacy Policy. If you do not agree to these Terms of Service or the Privacy Policy, you must not access or use the Site.\n\nFor any questions regarding the Terms, our Customer Support team is available. Contact them by submitting a request at info@mirhunn.com.\n\n\n1. Eligibility\nThe Site is available to users who are at least 18 years old and legally capable of entering into binding contracts. If you are between 13 and 18 years of age, you are permitted to use the Site only under the supervision of a parent or legal guardian who agrees to be bound by these Terms of Service. If you are under 13, you are not permitted to use the Site.\n\nUsers must comply with all laws and regulations applicable to their use of the Site and the services offered.\n\n\n2. Key Terms\n\nBuyers are users who purchase services on MirHunn.\nService Providers are users who offer and provide services on MirHunn as individuals (peer-to-peer) or as companies.\nCompany Profiles refer to accounts created by businesses for promotional purposes. These accounts do not engage in transactions on the platform but can display a profile and link to the company’s website.\nOrders are the formal agreements between a Buyer and a Service Provider for a service.\nStripe Connect is the payment processor for transactions on the platform. MirHunn takes an 8% commission on each completed transaction.\n\n\n3. Registration\n\nTo buy or sell services on MirHunn, you must register for an account. You agree to provide accurate and complete information and keep your account information up to date. You are responsible for any activity on your account, and you must keep your password secure.\n\nYou must not create an account for fraudulent purposes or with false information. You are responsible for maintaining the confidentiality of your account credentials.\n\n\n4. Service Providers\n\nService Providers can offer services as either peer-to-peer individual providers or as businesses. Service Providers set their pricing and terms for the services they offer. They must ensure that all services offered comply with applicable laws and do not violate these Terms of Service.\n\n4.1 Peer-to-Peer Providers\n\nIndividuals offering services must ensure that they are legally allowed to provide these services in Luxembourg. No certification or diploma is required for offering most services, but you must comply with local legal requirements.\n\n4.2 Business Providers\n\nCompanies can offer services on the platform or create a Company Profile for promotional purposes without transacting directly through the platform.\nBusinesses offering services are responsible for ensuring that their business complies with legal and tax obligations in Luxembourg, including VAT requirements.\n\nCompany Profiles are available for businesses that wish to create a presence on the platform to advertise services. These profiles do not facilitate transactions on MirHunn but allow users to visit the company\'s website through a link.\n\n\n5. Orders and Payments\n\nBuyers pay MirHunn in advance to create an order for a service. Service Providers receive 92% of the agreed payment after MirHunn\'s 8% commission is deducted.\n\nAll payments are processed through Stripe Connect. Users do not need to set up individual Stripe accounts, as payments are managed through the platform.\n\nOnce the service is completed and marked as delivered, the payment is released to the Service Provider. If a Buyer does not respond within 3 days after delivery, the order will be marked as completed automatically.\n\n\n6. Cancellations and Disputes\n\nBuyers and Service Providers are encouraged to resolve disputes directly. If resolution cannot be achieved, either party can escalate the issue to MirHunn for review.\n\nRefunds and cancellations are handled on a case-by-case basis, with the final decision resting with MirHunn. Cancellations due to non-delivery of services or substandard performance can negatively impact the Service Provider’s reputation and level.\n\n\n7. User Conduct\n\nAll users must conduct themselves professionally and respectfully when interacting on MirHunn. The following behaviors are strictly prohibited:\n\nEngaging in fraudulent or illegal activities.\nSpamming, harassment, or discrimination based on race, gender, sexual orientation, or other protected categories.\nSoliciting or accepting payments outside the platform to bypass MirHunn’s commission.\nAny violation of these standards may result in suspension or termination of your account.\n\n\n8. Service Quality and Reviews\n\nService Providers must deliver services at the agreed-upon quality and in accordance with the description provided at the time of the order. Buyers are encouraged to leave honest reviews based on their experiences. Reviews cannot be removed unless they are in violation of MirHunn’s Terms of Service.\n\n\n9. Privacy and Data Protection\n\nMirHunn collects and processes personal data in accordance with our Privacy Policy. By using the Site, you agree to our data handling practices.\n\n\n10. Company Profiles\n\nBusinesses creating Company Profiles for advertising purposes on MirHunn must provide accurate information about their company, services, and website. No transactions will be conducted through these profiles, but users can visit the company’s website via a provided link.\n\nMirHunn reserves the right to remove any Company Profile that violates these Terms of Service or any applicable law.\n\n\n11. Changes to the Terms of Service\n\nMirHunn may modify these Terms of Service at any time. Any changes will be posted on the Site, and continued use of the Site after such changes constitutes acceptance of the new terms.\n\n\n12. Limitation of Liability\n\nTo the fullest extent permitted by law, MirHunn is not liable for any indirect, incidental, or consequential damages arising from your use of the Site or services.\n\n\n13. Governing Law\n\nThese Terms of Service are governed by and construed in accordance with the laws of Luxembourg. Any legal action arising out of these Terms will be filed in the courts of Luxembourg.\n\n',
      'de': '',
      'fr': '',
    },
    'w1v1zr0i': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // SupportTrustandSafety
  {
    'y8k3wt55': {
      'en': 'Your trust and safety is  Mir Hunn\'s top priority.',
      'de': '',
      'fr': '',
    },
    'o48ftqrc': {
      'en': 'Countless services, countless users. ',
      'de': '',
      'fr': '',
    },
    'srcnjtnh': {
      'en': 'Mir Hunn\'s confirmation system keeps the area safe',
      'de': '',
      'fr': '',
    },
    'qbh5xo0f': {
      'en':
          'MirHunn\'s confirmation system ensures a secure and trustworthy environment. Every service provider is verified before their profile becomes public, keeping the platform safe for all users.',
      'de': '',
      'fr': '',
    },
    'ssmof0pc': {
      'en': 'Buy and sell, worry free',
      'de': '',
      'fr': '',
    },
    'gwpsoicy': {
      'en': 'Safe Payments',
      'de': '',
      'fr': '',
    },
    'o1bbqzdz': {
      'en':
          'All transactions on the MirHunn platform are securely processed. Whether a user chooses to pay by credit card, PayPal, or other payment methods, MirHunn manages the entire process, ensuring the protection of personal and payment information. We are fully committed to upholding the highest security standards, complying with industry regulations to safeguard user data.',
      'de': '',
      'fr': '',
    },
    '1jsfomx5': {
      'en': 'Personal Privacy',
      'de': '',
      'fr': '',
    },
    'xm1l6jif': {
      'en':
          'MirHunn values your privacy. Your data is always secure, and we will never share your personal information with third parties.',
      'de': '',
      'fr': '',
    },
    'am97v3re': {
      'en': 'Secure Communications',
      'de': '',
      'fr': '',
    },
    's2qu0s8b': {
      'en':
          'You can safely communicate with any service provider on MirHunn through our secure messaging system, ensuring that all interactions remain private and protected.\n\n\n\n\n\n\n',
      'de': '',
      'fr': '',
    },
    '1602zjd7': {
      'en': 'Mir Hunn\'s confirmation system keeps the area safe',
      'de': '',
      'fr': '',
    },
    'yk24wegy': {
      'en':
          'MirHunn\'s confirmation system ensures a secure and trustworthy environment. Every service provider is verified before their profile becomes public, keeping the platform safe for all users.',
      'de': '',
      'fr': '',
    },
    'ekzeijry': {
      'en': 'Buy and sell, worry free',
      'de': '',
      'fr': '',
    },
    'tzv5t1h6': {
      'en': 'Safe Payments',
      'de': '',
      'fr': '',
    },
    'gez1tncl': {
      'en':
          'All transactions on the MirHunn platform are securely processed. Whether a user chooses to pay by credit card, PayPal, or other payment methods, MirHunn manages the entire process, ensuring the protection of personal and payment information. We are fully committed to upholding the highest security standards, complying with industry regulations to safeguard user data.',
      'de': '',
      'fr': '',
    },
    'wx4cm8mr': {
      'en': 'Personal Privacy',
      'de': '',
      'fr': '',
    },
    '9r2qm4nx': {
      'en':
          'MirHunn values your privacy. Your data is always secure, and we will never share your personal information with third parties.',
      'de': '',
      'fr': '',
    },
    '8xbw9n4x': {
      'en': 'Secure Communications',
      'de': '',
      'fr': '',
    },
    '4zjehkjb': {
      'en':
          'You can safely communicate with any service provider on MirHunn through our secure messaging system, ensuring that all interactions remain private and protected.\n\n\n\n\n\n\n',
      'de': '',
      'fr': '',
    },
    'fec254gc': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // AboutOurOffertoSeniors
  {
    '3u8meipz': {
      'en': 'A Call Away from Countless Services',
      'de': '',
      'fr': '',
    },
    'q8i8mthq': {
      'en':
          'MirHunn\'s Senior Offer: \nSimplifying Your Life\n\nFrom finding the right provider to scheduling the service at your preferred time\n-MirHunn',
      'de': '',
      'fr': '',
    },
    'llmac6o1': {
      'en': 'How it works?',
      'de': '',
      'fr': '',
    },
    'meqtpqhc': {
      'en':
          'With MirHunn’s Senior Service Package, you no longer need to navigate the complexities of online bookings, endless service comparisons, or confusing scheduling systems. Simply call us, tell us what you need, and we will handle everything.\nOur team listens to your requirements, advises on the best options, and ensures that the service you receive matches your expectations.',
      'de': '',
      'fr': '',
    },
    'kirjvp94': {
      'en': 'Why Choose Our Senior Package?',
      'de': '',
      'fr': '',
    },
    '61tt21ed': {
      'en':
          'No longer need to navigate the complexities of online bookings, endless service comparisons, or confusing scheduling systems. Simply call us. It’s that easy.\n\n\nComprehensive Range of Services: We offer an extensive variety of services that cater to the diverse needs of seniors. \n\n\nTrusted, Verified Providers: Quality and safety are our top priorities. We only connect you with verified and trusted professionals, ensuring that every service provider you work with has been thoroughly vetted. \n\n\nPersonalized Service Coordination: Every senior has unique needs, and we are here to provide a service experience tailored just for you.\n\n\nEffortless Booking and Scheduling: The process is designed to be as straightforward as possible. With one phone call, we handle everything for you. We’ll take care of the scheduling, confirmations, and any follow-up needed, so you never have to worry about the details. You can simply relax, knowing that the service you need will be delivered when and where you want it.\n\n',
      'de': '',
      'fr': '',
    },
    'vz9goj9l': {
      'en': 'Activate your senior package',
      'de': '',
      'fr': '',
    },
    'wb2t82qa': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // AboutLuxembourgNews
  {
    'q310rj1k': {
      'en': 'MirHunn\'s Newsletter',
      'de': '',
      'fr': '',
    },
    '0yao446y': {
      'en': 'Stay Updated with MirHunn Weekly Insights',
      'de': '',
      'fr': '',
    },
    'na4mu624': {
      'en': 'The Content of the Newsletter',
      'de': '',
      'fr': '',
    },
    'wdjpghq4': {
      'en':
          'Our newsletter is published every week and is your go-to source for staying informed about the latest economic developments, particularly those impacting Luxembourg. In addition to updates about the app itself, we share valuable insights, trends, and tips to help you make the most of the services and opportunities available on MirHunn.\n',
      'de': '',
      'fr': '',
    },
    '1x0wowzw': {
      'en':
          '-Weekly updates on economic news in Luxembourg.\n-Highlights of top-rated services and products on MirHunn.\n-Exclusive offers and opportunities for service providers and consumers.\n\nCollaborate with Us:\nDo you want to feature your business, service, or product in our newsletter? MirHunn is open to collaborations with companies and service providers who align with our vision of connecting people through seamless service exchange.\n\n',
      'de': '',
      'fr': '',
    },
    '0akre3xx': {
      'en': 'Start conversation with newsletter@mirhunn.com',
      'de': '',
      'fr': '',
    },
    'c93cgcf3': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // AboutAccredition
  {
    'rqbzsdo3': {
      'en': 'Luck is what happens when preparation meets opportunity',
      'de': '',
      'fr': '',
    },
    'lxalwxiu': {
      'en':
          'At MirHunn, success builds visibility. Our platform is designed to reward service providers who deliver consistent, quality services by increasing their visibility to potential clients.',
      'de': '',
      'fr': '',
    },
    'ygsozmrt': {
      'en': 'Why Conducting Services on MirHunn Matters',
      'de': '',
      'fr': '',
    },
    '8db3dt31': {
      'en':
          'The placement of services in the ListView is determined by the number of completed transactions. Services with the most sales appear at the top of the list, making them more visible to other users.\nHigher visibility attracts more clients, as users naturally gravitate towards the top-listed services that are perceived as popular and trusted by others.\n',
      'de': '',
      'fr': '',
    },
    'cb6oq72l': {
      'en': 'How You Can Maximize Your Potential For Success',
      'de': '',
      'fr': '',
    },
    'ohn3g5bh': {
      'en':
          '-Offer Great Service: Satisfied clients are more likely to return and recommend your service to others.\n-Encourage Repeat Customers: Build relationships with your clients to create consistent demand.\n-Utilize Reviews: Positive feedback enhances trust and can contribute to your success.\n-Stay Active: Regularly updating your service details and maintaining availability keeps your profile relevant.',
      'de': '',
      'fr': '',
    },
    'filelydu': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Corporateserviceswithcompany
  {
    'ey71pm50': {
      'en': '\"Opportunities don\'t happen. You create them.\" — Chris Grosser',
      'de': '',
      'fr': '',
    },
    'nim3j4ez': {
      'en':
          'Expand your reach and elevate your business with MirHunn’s tailored corporate services. Whether you’re offering services, building brand awareness, or seeking new clients, we provide the tools and visibility you need to succeed in Luxembourg.\n\n',
      'de': '',
      'fr': '',
    },
    '4oy9y8fc': {
      'en': 'Service Listings for Businesses',
      'de': '',
      'fr': '',
    },
    '0lh3hrtj': {
      'en':
          'Showcase your services to a growing audience ready to book and buy. Whether you offer tech solutions, wellness services, or business support, listing on MirHunn brings your company directly to Luxembourgish clients.',
      'de': '',
      'fr': '',
    },
    '5wk9qvww': {
      'en': 'Business Profile for Brand Visibility',
      'de': '',
      'fr': '',
    },
    'iuwpniy2': {
      'en':
          'Create a strong online presence by establishing a profile on MirHunn. Advertise your business, provide key information, and direct users to your website.',
      'de': '',
      'fr': '',
    },
    '59burnin': {
      'en': 'Advertising in MirHunn’s Weekly Newsletter',
      'de': '',
      'fr': '',
    },
    '7kwz615o': {
      'en':
          'Place your brand in front of thousands of engaged readers with ad space in MirHunn’s weekly newsletter. Promote your services and attract new customers with targeted content.',
      'de': '',
      'fr': '',
    },
    'bunpc8rx': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Corporateservicespeertopeer
  {
    'ur3kbjxo': {
      'en': '\"Opportunities don\'t happen. You create them.\" — Chris Grosser',
      'de': '',
      'fr': '',
    },
    'q6mgp32p': {
      'en':
          'Expand your reach and elevate your business with MirHunn’s tailored corporate services. Whether you’re offering services, building brand awareness, or seeking new clients, we provide the tools and visibility you need to succeed in Luxembourg.\n\n',
      'de': '',
      'fr': '',
    },
    'lixaqa7o': {
      'en': 'Service Listings for Businesses',
      'de': '',
      'fr': '',
    },
    'ame35b51': {
      'en':
          'Showcase your services to a growing audience ready to book and buy. Whether you offer tech solutions, wellness services, or business support, listing on MirHunn brings your company directly to Luxembourgish clients.',
      'de': '',
      'fr': '',
    },
    'fthdfesn': {
      'en': 'Business Profile for Brand Visibility',
      'de': '',
      'fr': '',
    },
    '2vp01k7j': {
      'en':
          'Create a strong online presence by establishing a profile on MirHunn. Advertise your business, provide key information, and direct users to your website.',
      'de': '',
      'fr': '',
    },
    'fs6bh82s': {
      'en': 'Advertising in MirHunn’s Weekly Newsletter',
      'de': '',
      'fr': '',
    },
    'q8ubhoxr': {
      'en':
          'Place your brand in front of thousands of engaged readers with ad space in MirHunn’s weekly newsletter. Promote your services and attract new customers with targeted content.',
      'de': '',
      'fr': '',
    },
    'bbvrs83f': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Corporateservicespartnerships
  {
    '8blx63y0': {
      'en': 'Let\'s Build Something Amazing Together!',
      'de': '',
      'fr': '',
    },
    'oiyj9xui': {
      'en':
          'At MirHunn, we believe in the power of collaboration and creativity. We’re more than just a marketplace—we’re a platform where innovative ideas and partnerships come to life. If you have a vision for a corporate service or partnership, we want to hear from you!\n',
      'de': '',
      'fr': '',
    },
    '4iy7oes9': {
      'en': 'Have an Idea? Let’s Talk!',
      'de': '',
      'fr': '',
    },
    'xcp8veqe': {
      'en':
          'No idea is too big or small. Whether you’re thinking of launching a groundbreaking initiative, hosting an event, or creating a joint venture, we’re all ears. At MirHunn, we value out-of-the-box thinking and are open to exploring how we can work together.',
      'de': '',
      'fr': '',
    },
    'ty118dgl': {
      'en': 'How to Reach Us',
      'de': '',
      'fr': '',
    },
    '34mpxpb4': {
      'en':
          'How to Reach Us\nSend us your ideas, proposals, or questions at partnerships@mirhunn.com, and let’s start the conversation. Share your vision, and our team will get back to you to explore how we can make it happen.',
      'de': '',
      'fr': '',
    },
    '61m50fwn': {
      'en': 'Get in touch with MirHunn Newsletter',
      'de': '',
      'fr': '',
    },
    'o5rdvkph': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Corporateservicesmarketing
  {
    'sm1wb48c': {
      'en':
          '\"Opportunities don\'t happen. You create them.\" — Chris Grosser\n\n\n\nBoost Your Business with MirHunn’s Marketing Options',
      'de': '',
      'fr': '',
    },
    '0uyelmc7': {
      'en':
          'At MirHunn, we offer exclusive marketing opportunities to help you grow your business and connect with more clients. By choosing one of our marketing options, you can increase your visibility, reach your target audience, and drive more sales.\n',
      'de': '',
      'fr': '',
    },
    'uaghuz7f': {
      'en': 'Option 1: Profile Promotion on the MirHunn Marketplace\n',
      'de': '',
      'fr': '',
    },
    'lszzc4sd': {
      'en':
          'Ensure your business stands out by having your profile displayed prominently on the MirHunn app. With this option, your company profile, complete with contact information, website link, and service details, will be visible to all users browsing the marketplace. This is an excellent way to increase exposure and attract more customers who are actively looking for services like yours. Simply choose this option, and let your business be seen by potential clients who need what you offer.',
      'de': '',
      'fr': '',
    },
    'zw7o0ebd': {
      'en': 'Start Promoting Your Business',
      'de': '',
      'fr': '',
    },
    '1yl92dc3': {
      'en': 'Option 2: Feature Your Business in the MirHunn Newsletter\n',
      'de': '',
      'fr': '',
    },
    'lw4nr5fg': {
      'en':
          'Expand your reach even further by being featured in the MirHunn weekly newsletter. Our newsletter is sent out regularly to a growing list of app users, keeping them informed about new services, promotions, and featured businesses. By choosing this option, your business can be highlighted, showcasing your services to a wide audience who are already interested in what MirHunn has to offer. Make a request to be included, and let your brand be a part of our engaging content that reaches users across Luxembourg.',
      'de': '',
      'fr': '',
    },
    'bca519en': {
      'en': 'Get in touch with MirHunn Newsletter',
      'de': '',
      'fr': '',
    },
    'cgvck8km': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // ClickedServiceFromExploreAlgolia
  {
    'bqhchzuc': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    'p8y1otq3': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '6coc7p5e': {
      'en': 'Video',
      'de': '',
      'fr': '',
    },
    '7qauqe4q': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'ff9ig8kp': {
      'en': 'Comments Section',
      'de': '',
      'fr': '',
    },
    'hiw4imyr': {
      'en': 'out of 5',
      'de': '',
      'fr': '',
    },
    'qvol8clp': {
      'en': ' reviews',
      'de': '',
      'fr': '',
    },
    '7wo2lla0': {
      'en': 'Company Contact Details\n',
      'de': '',
      'fr': '',
    },
    '674233h7': {
      'en': 'Email:   ',
      'de': '',
      'fr': '',
    },
    'tgzut6w5': {
      'en': 'Phone Number:  ',
      'de': '',
      'fr': '',
    },
    'ttjtjwlb': {
      'en': 'Click to visit the promoter\'s social media',
      'de': '',
      'fr': '',
    },
    'f1meci2s': {
      'en': 'Click the icon on the right to visit the website',
      'de': '',
      'fr': '',
    },
    'iu07igra': {
      'en': 'Rate and Share your Experience',
      'de': '',
      'fr': '',
    },
    'gqgwgq7m': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'r1sbjdyz': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'wca51jsy': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '937non4g': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'a2boq24z': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'rwwl8y9p': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'or0y8qvq': {
      'en': 'Price per hour',
      'de': '',
      'fr': '',
    },
    'wbrlkhzk': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'b0ddfbto': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    '4mkq2scf': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'cjzjln8h': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'h84uhesf': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'cq8w2efx': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'q1zrg4zt': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '9tlg146z': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'v7mtdtvv': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'kctejl2u': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'wu7g7hqi': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '0kcfb4rb': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    '5beze1bz': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'zzld1uri': {
      'en': 'Total number of hours',
      'de': '',
      'fr': '',
    },
    'k8fqqcn2': {
      'en': 'Price per session',
      'de': '',
      'fr': '',
    },
    'm96p5d37': {
      'en': '€/month',
      'de': '',
      'fr': '',
    },
    '9onkw7kb': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'gw1h00ru': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    's89ac8d9': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'rinhks0s': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'spkmthf4': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '4873ti1w': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'a24ol1my': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'mll4yvvj': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'w4jnnzz8': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'gg8g8f88': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'bjbfgylc': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '7r5bfadp': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    '101a80wv': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'dbivpgoz': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'qvz6u3ix': {
      'en': '€/month',
      'de': '',
      'fr': '',
    },
    'meyddbz2': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'a33121w3': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'fxr2mvl2': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '6rr4ld41': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'qczyju7s': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'fsnq8f2j': {
      'en': 'Digital',
      'de': '',
      'fr': '',
    },
    'ln3zyule': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'rtaaa7op': {
      'en': '€',
      'de': '',
      'fr': '',
    },
    'gm4nb3ed': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'kwnneedv': {
      'en': 'Per Hour',
      'de': '',
      'fr': '',
    },
    '1q5v3yjg': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'hkzjnk1q': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'k1ei5ro3': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'bfy688mf': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'xb0b4p0n': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '4gvy596g': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'bl6cg51c': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'mwqf2ufy': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '5buxn9nh': {
      'en': 'Per Session',
      'de': '',
      'fr': '',
    },
    'bsfqbmx1': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'xnxda5ws': {
      'en': 'Price of the session',
      'de': '',
      'fr': '',
    },
    '1ij8nz14': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'z9t0yfzi': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'oouzszn8': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '04k04fl5': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'v8nhd1z9': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'rbz84aqu': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '0dkn35vv': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '03z253zb': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'rhhbc7es': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '35wtkgd2': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'thj3965p': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'azzsg0rl': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'h7qusgww': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ygkrvgmv': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'qg9hynhb': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '6gq3lbak': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'u13bii8q': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'us7vlpxo': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'zylz5zek': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '2w6jon2p': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'fh0gai1y': {
      'en': 'Select during how many weeks (max 4)',
      'de': '',
      'fr': '',
    },
    '80co2ohr': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'r357v25n': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'mpl83r4z': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'g582hvfa': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '531y5as7': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    'x4blx7zn': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    '27pj2dc3': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    'fy0bicwp': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'mue4il0m': {
      'en': 'Price of the program',
      'de': '',
      'fr': '',
    },
    'rmons19d': {
      'en': 'Select the location',
      'de': '',
      'fr': '',
    },
    'bcqhm9io': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '4qrbxev4': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'hy80wfmo': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '0cson0kd': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '644lkqnk': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'y3eq3yop': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '3ya4xvmb': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'tnbdjhqx': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'euwa2yrv': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'cd1lqeov': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    '8r5m9v1y': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'zsu4jmyy': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ecnf8jpz': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'utx8lspf': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '9pv66kx7': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'csm793nj': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'kc9ziwbn': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'fdebtob1': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'v87hqmoi': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'gv4eewhy': {
      'en': 'Select during how many weeks ',
      'de': '',
      'fr': '',
    },
    'wvm6nzds': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '5bj5wk8g': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'mm09r8b9': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '1xzlve6g': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'fntlj2p5': {
      'en': 'The total number of hours',
      'de': '',
      'fr': '',
    },
    'udew3sr4': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'fyqlghdw': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'hoe0lwyb': {
      'en': 'Name your packet',
      'de': '',
      'fr': '',
    },
    'bbptx4tr': {
      'en': 'Price',
      'de': '',
      'fr': '',
    },
    'z4wktaic': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'd4ilwfea': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'zps9z4or': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'hqd6wa34': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '87mmb0ul': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '8glnu91k': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '5x8uw3xh': {
      'en':
          'Describe the details of your offering & any other needed information',
      'de': '',
      'fr': '',
    },
    'io6ml8be': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    'o5xu6xtd': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'zzyn7v0v': {
      'en': 'Certifications',
      'de': '',
      'fr': '',
    },
    'vwosyb1j': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'fzel4nyn': {
      'en': 'Comments Section',
      'de': '',
      'fr': '',
    },
    'j6a9yhnz': {
      'en': 'out of 5',
      'de': '',
      'fr': '',
    },
    'q83j6c19': {
      'en': ' reviews',
      'de': '',
      'fr': '',
    },
    'qfl5afge': {
      'en': 'Company Contact Details\n',
      'de': '',
      'fr': '',
    },
    'duhr9mmc': {
      'en': 'Email:   ',
      'de': '',
      'fr': '',
    },
    'cirydy31': {
      'en': 'Phone Number:  ',
      'de': '',
      'fr': '',
    },
    't5s3ajxb': {
      'en': 'Click to visit the promoter\'s social media',
      'de': '',
      'fr': '',
    },
    '9pbec4gt': {
      'en': 'Click the icon on the right to visit the website',
      'de': '',
      'fr': '',
    },
    'xjw67zlq': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'acfkcaex': {
      'en': 'Price per Hour',
      'de': '',
      'fr': '',
    },
    'f5n7monr': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'pgyrxm8u': {
      'en': '/1hour',
      'de': '',
      'fr': '',
    },
    'ue1uzgbj': {
      'en': 'Check for availability ',
      'de': '',
      'fr': '',
    },
    'sxflaymp': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'd017abxu': {
      'en': 'Price per Session',
      'de': '',
      'fr': '',
    },
    '50jac8mx': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'fu1ogdab': {
      'en': 'Check Details',
      'de': '',
      'fr': '',
    },
    'zl748w7d': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'xqra85on': {
      'en': 'Price per Program',
      'de': '',
      'fr': '',
    },
    '79i1v85u': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'm0sdzd1c': {
      'en': 'Check Details',
      'de': '',
      'fr': '',
    },
    'nr8o5vmm': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'b1x3xtmw': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'lgu10hqb': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'uv0v1scc': {
      'en': 'Check Details',
      'de': '',
      'fr': '',
    },
    'fmeuue9m': {
      'en': 'Rate and Share your Experience',
      'de': '',
      'fr': '',
    },
    'nl5jpetk': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // PerhourforPHONE
  {
    'fq1hpqrt': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    '990ev3sy': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'tqyqzdtl': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '0hez57bd': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '7awvjel4': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'si8zzqbf': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'wmga7zf9': {
      'en': 'Price per hour',
      'de': '',
      'fr': '',
    },
    'thx3897n': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'aflumje9': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'uv4teaym': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // selectoptions
  {
    'imstfmfl': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // PersessionPHONE
  {
    '838hil22': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'mbf0qmg5': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '3wb3p5cq': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'z8vaq3i0': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '9mfa3htk': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'k400yovh': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'w3o2133o': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'xyjegrxw': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'irqythtt': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'n4fev93r': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'd6sgxdgo': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'qu7pwk6k': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'i7rmp02z': {
      'en': 'Total number of hours',
      'de': '',
      'fr': '',
    },
    'ed8yhqfz': {
      'en': 'Price per session',
      'de': '',
      'fr': '',
    },
    'uf142wcc': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'b1f2yk94': {
      'en': 'Proceed to purchase',
      'de': '',
      'fr': '',
    },
    'h0onwwvu': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // PerproductPHONE
  {
    'ivd612yw': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'ikvz0lhd': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'gq2047is': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'fnml3tef': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    '8mfl7anl': {
      'en': '2-6 days',
      'de': '',
      'fr': '',
    },
    'w93adhpf': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'm5ehq6ok': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'nvyr9d2p': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    '06yb32ly': {
      'en': 'Proceed to purchase',
      'de': '',
      'fr': '',
    },
    '39zft7kd': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MyActivitiesfollowupprofile
  {
    'qtnbyahd': {
      'en': 'Transactions',
      'de': '',
      'fr': '',
    },
    '3okhyxdw': {
      'en': 'Charges',
      'de': '',
      'fr': '',
    },
    'r2rfljox': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'y5jsngvc': {
      'en': 'JoeMoe Coffee',
      'de': '',
      'fr': '',
    },
    'j3wgg5in': {
      'en': 'Paid with: Visa **** 2192',
      'de': '',
      'fr': '',
    },
    'osdll8bf': {
      'en': '\$50.21',
      'de': '',
      'fr': '',
    },
    'loq09b0s': {
      'en': 'JoeMoe Coffee',
      'de': '',
      'fr': '',
    },
    'hk3knrp8': {
      'en': 'Paid with: Visa **** 2192',
      'de': '',
      'fr': '',
    },
    'aifhh1k4': {
      'en': '\$50.21',
      'de': '',
      'fr': '',
    },
    '3649bs9b': {
      'en': 'Earnings',
      'de': '',
      'fr': '',
    },
    'djarlfy1': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    't3ytshl2': {
      'en': 'JoeMoe Coffee',
      'de': '',
      'fr': '',
    },
    '7frbqp0h': {
      'en': 'Paid with: Visa **** 2192',
      'de': '',
      'fr': '',
    },
    'ik09e0yb': {
      'en': '\$50.21',
      'de': '',
      'fr': '',
    },
    't7edqko8': {
      'en': 'JoeMoe Coffee',
      'de': '',
      'fr': '',
    },
    'iqcn36t6': {
      'en': 'Paid with: Visa **** 2192',
      'de': '',
      'fr': '',
    },
    'rw1wm4nc': {
      'en': '\$50.21',
      'de': '',
      'fr': '',
    },
    'kf6qlbdq': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supportprivacypolicy
  {
    'xpf3tgh3': {
      'en': 'Privacy Policy',
      'de': '',
      'fr': '',
    },
    'nn830eqt': {
      'en':
          'Last Update: January 2025\n\nMirHunn SARL (“MirHunn”, “we”, “our” or “us”) is committed to protecting the personal information of its users. This Privacy Policy (the \"Policy\") explains how MirHunn collects, processes, and safeguards your personal information when you access and use our website, mobile application, or any other related services (collectively, the \"Site\").\n\nBy accessing or using www.mirhunn.com or the MirHunn mobile app, you agree to the practices described in this Policy. This Policy may be updated from time to time; any changes will be posted on the Site. We will take necessary steps, to the extent required by applicable law, to notify you of any material changes. We recommend that you check the Policy periodically for updates.\n\n1. Information We Collect\nWe collect personal information to provide and improve our services. This information is collected when you register, use the platform, communicate with other users, or engage in other activities on the Site.\n\n1.1 Information You Provide:\nAccount Information: When you register for an account, we collect personal details like your name, email address, username, profile picture, billing information, and payment details.\nService Listings: When Service Providers create service listings, we collect information about the services offered, including descriptions, images, and pricing.\nCommunication: Any communications you send through the platform (messages, requests, reviews) are also collected.\nIdentity Verification: To ensure marketplace integrity, we may collect identification information such as a copy of your government-issued ID.\n1.2 Information We Collect Automatically:\nUsage Data: We collect information on your interactions with the Site, such as your IP address, browser type, device information, the pages you visit, and search history.\nTransaction Data: We collect information about transactions between Buyers and Service Providers, including services purchased, transaction amounts, and order history.\nGeo-location Data: When using the app, we may collect your location data to improve service recommendations and enable location-based services.\n1.3 Information from Third Parties:\nWe may receive information from third-party services, including payment processors, identity verification services, and marketing platforms.\n\n2. How We Use Your Information\nMirHunn uses the information we collect to provide, maintain, and improve our services. Specifically, we use your information to:\n\nOperate the Platform: Facilitate transactions between Buyers and Service Providers, process payments, and provide customer support.\nImprove User Experience: Personalize your experience by offering tailored service recommendations and enhancing platform functionality.\nEnsure Security: Verify identities, prevent fraud, and enforce our Terms of Service.\nCommunicate with You: Send notifications, service updates, and marketing messages, subject to your preferences.\nLegal Compliance: Comply with applicable legal and regulatory requirements.\n3. Legal Basis for Processing\nIn accordance with applicable laws, we process personal information under the following legal bases:\n\nContractual Necessity: We process personal data to provide you with the services you have requested, such as facilitating transactions and managing your account.\nConsent: Where applicable, we may process personal data based on your consent, for example, when you opt in to receive marketing communications.\nLegitimate Interests: We process personal data to further our legitimate business interests, such as improving the platform, preventing fraud, and ensuring security.\nLegal Obligations: We may process personal data to comply with legal or regulatory requirements.\n4. Sharing Your Information\nWe share your personal information with third parties in the following circumstances:\n\nWith Other Users: When you buy or sell services on MirHunn, certain information such as your profile details, service listings, and transaction history will be visible to other users.\nWith Service Providers: We work with third-party service providers to process payments (e.g., Stripe), host our website, provide customer support, and ensure security. These third parties may access your personal information only to perform specific tasks on our behalf.\nFor Legal Reasons: We may disclose personal information to comply with legal obligations, respond to regulatory requests, prevent fraud, or protect the rights, property, and safety of MirHunn, our users, or the public.\nWith Business Affiliates: If MirHunn undergoes a business transaction, such as a merger or acquisition, your information may be transferred as part of that transaction.\n5. Data Retention\nWe retain personal information only for as long as necessary to fulfill the purposes for which it was collected or to comply with legal obligations. The retention periods vary depending on the nature of the information and the purpose of processing. For example:\n\nAccount Information: Retained for the duration of your use of the platform.\nTransaction Data: Retained for legal and tax obligations.\nCommunication Data: Retained for the purpose of resolving disputes and improving customer service.\n\n6. Security\nWe take reasonable measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. These measures include encryption, secure server storage, and access controls. However, no security system is impenetrable, and we cannot guarantee the absolute security of your data.\n\n7. Cookies\nCookie Policy\nLast Updated: January 2025\nAt MirHunn SARL (\"MirHunn\", \"we\", \"our\", or \"us\"), we are committed to protecting your privacy and being transparent about how we use cookies on our platform. This Cookie Policy explains what cookies are, how we use them, and your choices regarding their use.\nWhat Are Cookies?\nCookies are small text files stored on your device when you visit a website or use an app. Cookies help us enhance the functionality and performance of our platform by remembering your preferences and enabling key features.\nTypes of Cookies We Use\nWe only use essential cookies, which are required for the proper functioning of our platform. These cookies do not require user consent under the GDPR. Specifically:\nEssential Cookies:\nPurpose: These cookies are necessary for core features such as user authentication, secure transactions, and session management. Without these cookies, the platform cannot operate properly.\nExamples:\nManaging user login sessions.\nProcessing payments securely using Stripe.\nEnsuring the security and functionality of the platform.\nThird-Party Cookies:\nWe use Stripe for secure payment processing, which may set cookies strictly necessary for payment functionality. For more details, refer to Stripe’s Privacy Policy.\nWhy We Do Not Use Non-Essential Cookies:\nMirHunn does not use cookies for analytics, marketing, or tracking purposes at this time. As a result, we do not require a cookie consent banner since only essential cookies are used.\nManaging Cookies:\nBecause we only use essential cookies, there are no cookie preferences to manage. However, you can disable cookies through your browser settings. Please note that disabling essential cookies may impact the functionality of the platform.\nBrowser Settings: Most browsers allow you to block or delete cookies through their settings. Refer to your browser’s help section for instructions.\n\n\n8. Your Rights\nDepending on your location, you may have the following rights regarding your personal information:\n\nAccess: You can request access to your personal data.\nCorrection: You can request corrections to inaccurate personal information.\nDeletion: You can request the deletion of your personal data, subject to certain conditions.\nObjection: You can object to our use of your personal information for specific purposes.\nData Portability: You can request a copy of your personal data in a structured, machine-readable format.\nTo exercise any of these rights, please contact us at [privacy@mirhunn.com].\n\n9. Children\'s Privacy\nMirHunn is intended for users who are at least 18 years old. If you are between 13 and 18 years old, you may only use the platform under the supervision of a parent or legal guardian. We do not knowingly collect personal information from children under 13. If we learn that we have collected information from a child under 13, we will delete it immediately.\n\n10. International Data Transfers\nMirHunn operates globally, and your information may be transferred to and processed in countries other than your own, including countries outside the European Economic Area (EEA). We ensure that such transfers are made in accordance with applicable data protection laws and implement appropriate safeguards, such as standard contractual clauses.\n\n11. Do Not Track\nMirHunn does not respond to \"Do Not Track\" signals. However, you can manage your cookie preferences in your browser settings.\n\n12. External Links\nThe Site may contain links to third-party websites. MirHunn is not responsible for the privacy practices of these third-party websites. We encourage you to review the privacy policies of any third-party site you visit.\n\n13. Changes to this Policy\nWe may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. Any changes will be posted on this page with an updated \"Last Update\" date.\n\n14. Contact Us\nIf you have any questions or concerns regarding this Privacy Policy or your personal information, please contact us at:\n\nEmail: info@mirhunn.com\n\n\n',
      'de': '',
      'fr': '',
    },
    '7o0uccf7': {
      'en': 'Mir Hunns\'s Legal Portal',
      'de': '',
      'fr': '',
    },
    'q2al9ydg': {
      'en': 'Privacy Policy',
      'de': '',
      'fr': '',
    },
    'zksi2qfn': {
      'en':
          'Last Update: January 2025\n\nMirHunn SARL (“MirHunn”, “we”, “our” or “us”) is committed to protecting the personal information of its users. This Privacy Policy (the \"Policy\") explains how MirHunn collects, processes, and safeguards your personal information when you access and use our website, mobile application, or any other related services (collectively, the \"Site\").\n\nBy accessing or using www.mirhunn.com or the MirHunn mobile app, you agree to the practices described in this Policy. This Policy may be updated from time to time; any changes will be posted on the Site. We will take necessary steps, to the extent required by applicable law, to notify you of any material changes. We recommend that you check the Policy periodically for updates.\n\n1. Information We Collect\nWe collect personal information to provide and improve our services. This information is collected when you register, use the platform, communicate with other users, or engage in other activities on the Site.\n\n1.1 Information You Provide:\nAccount Information: When you register for an account, we collect personal details like your name, email address, username, profile picture, billing information, and payment details.\nService Listings: When Service Providers create service listings, we collect information about the services offered, including descriptions, images, and pricing.\nCommunication: Any communications you send through the platform (messages, requests, reviews) are also collected.\nIdentity Verification: To ensure marketplace integrity, we may collect identification information such as a copy of your government-issued ID.\n1.2 Information We Collect Automatically:\nUsage Data: We collect information on your interactions with the Site, such as your IP address, browser type, device information, the pages you visit, and search history.\nTransaction Data: We collect information about transactions between Buyers and Service Providers, including services purchased, transaction amounts, and order history.\nGeo-location Data: When using the app, we may collect your location data to improve service recommendations and enable location-based services.\n1.3 Information from Third Parties:\nWe may receive information from third-party services, including payment processors, identity verification services, and marketing platforms.\n\n2. How We Use Your Information\nMirHunn uses the information we collect to provide, maintain, and improve our services. Specifically, we use your information to:\n\nOperate the Platform: Facilitate transactions between Buyers and Service Providers, process payments, and provide customer support.\nImprove User Experience: Personalize your experience by offering tailored service recommendations and enhancing platform functionality.\nEnsure Security: Verify identities, prevent fraud, and enforce our Terms of Service.\nCommunicate with You: Send notifications, service updates, and marketing messages, subject to your preferences.\nLegal Compliance: Comply with applicable legal and regulatory requirements.\n3. Legal Basis for Processing\nIn accordance with applicable laws, we process personal information under the following legal bases:\n\nContractual Necessity: We process personal data to provide you with the services you have requested, such as facilitating transactions and managing your account.\nConsent: Where applicable, we may process personal data based on your consent, for example, when you opt in to receive marketing communications.\nLegitimate Interests: We process personal data to further our legitimate business interests, such as improving the platform, preventing fraud, and ensuring security.\nLegal Obligations: We may process personal data to comply with legal or regulatory requirements.\n4. Sharing Your Information\nWe share your personal information with third parties in the following circumstances:\n\nWith Other Users: When you buy or sell services on MirHunn, certain information such as your profile details, service listings, and transaction history will be visible to other users.\nWith Service Providers: We work with third-party service providers to process payments (e.g., Stripe), host our website, provide customer support, and ensure security. These third parties may access your personal information only to perform specific tasks on our behalf.\nFor Legal Reasons: We may disclose personal information to comply with legal obligations, respond to regulatory requests, prevent fraud, or protect the rights, property, and safety of MirHunn, our users, or the public.\nWith Business Affiliates: If MirHunn undergoes a business transaction, such as a merger or acquisition, your information may be transferred as part of that transaction.\n5. Data Retention\nWe retain personal information only for as long as necessary to fulfill the purposes for which it was collected or to comply with legal obligations. The retention periods vary depending on the nature of the information and the purpose of processing. For example:\n\nAccount Information: Retained for the duration of your use of the platform.\nTransaction Data: Retained for legal and tax obligations.\nCommunication Data: Retained for the purpose of resolving disputes and improving customer service.\n\n6. Security\nWe take reasonable measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. These measures include encryption, secure server storage, and access controls. However, no security system is impenetrable, and we cannot guarantee the absolute security of your data.\n\n7. Cookies\nCookie Policy\nLast Updated: January 2025\nAt MirHunn SARL (\"MirHunn\", \"we\", \"our\", or \"us\"), we are committed to protecting your privacy and being transparent about how we use cookies on our platform. This Cookie Policy explains what cookies are, how we use them, and your choices regarding their use.\nWhat Are Cookies?\nCookies are small text files stored on your device when you visit a website or use an app. Cookies help us enhance the functionality and performance of our platform by remembering your preferences and enabling key features.\nTypes of Cookies We Use\nWe only use essential cookies, which are required for the proper functioning of our platform. These cookies do not require user consent under the GDPR. Specifically:\nEssential Cookies:\nPurpose: These cookies are necessary for core features such as user authentication, secure transactions, and session management. Without these cookies, the platform cannot operate properly.\nExamples:\nManaging user login sessions.\nProcessing payments securely using Stripe.\nEnsuring the security and functionality of the platform.\nThird-Party Cookies:\nWe use Stripe for secure payment processing, which may set cookies strictly necessary for payment functionality. For more details, refer to Stripe’s Privacy Policy.\nWhy We Do Not Use Non-Essential Cookies:\nMirHunn does not use cookies for analytics, marketing, or tracking purposes at this time. As a result, we do not require a cookie consent banner since only essential cookies are used.\nManaging Cookies:\nBecause we only use essential cookies, there are no cookie preferences to manage. However, you can disable cookies through your browser settings. Please note that disabling essential cookies may impact the functionality of the platform.\nBrowser Settings: Most browsers allow you to block or delete cookies through their settings. Refer to your browser’s help section for instructions.\n\n\n8. Your Rights\nDepending on your location, you may have the following rights regarding your personal information:\n\nAccess: You can request access to your personal data.\nCorrection: You can request corrections to inaccurate personal information.\nDeletion: You can request the deletion of your personal data, subject to certain conditions.\nObjection: You can object to our use of your personal information for specific purposes.\nData Portability: You can request a copy of your personal data in a structured, machine-readable format.\nTo exercise any of these rights, please contact us at [privacy@mirhunn.com].\n\n9. Children\'s Privacy\nMirHunn is intended for users who are at least 18 years old. If you are between 13 and 18 years old, you may only use the platform under the supervision of a parent or legal guardian. We do not knowingly collect personal information from children under 13. If we learn that we have collected information from a child under 13, we will delete it immediately.\n\n10. International Data Transfers\nMirHunn operates globally, and your information may be transferred to and processed in countries other than your own, including countries outside the European Economic Area (EEA). We ensure that such transfers are made in accordance with applicable data protection laws and implement appropriate safeguards, such as standard contractual clauses.\n\n11. Do Not Track\nMirHunn does not respond to \"Do Not Track\" signals. However, you can manage your cookie preferences in your browser settings.\n\n12. External Links\nThe Site may contain links to third-party websites. MirHunn is not responsible for the privacy practices of these third-party websites. We encourage you to review the privacy policies of any third-party site you visit.\n\n13. Changes to this Policy\nWe may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. Any changes will be posted on this page with an updated \"Last Update\" date.\n\n14. Contact Us\nIf you have any questions or concerns regarding this Privacy Policy or your personal information, please contact us at:\n\nEmail: info@mirhunn.com\n\n\n\n',
      'de': '',
      'fr': '',
    },
    '3e9jwi96': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // perprogrammPHONE
  {
    'x6ksac0b': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    '2we3x304': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'g7jhe97w': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'phck35al': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'q969x1gu': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'uc0y8wg1': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '2j444j02': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'reqgyn32': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'rven4xvv': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'xcukorgu': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'vbm60e0h': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'gjype2of': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    '7m8umnwi': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'e872x5s3': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'oqmqg3rn': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    'j6mic4c5': {
      'en': 'Proceed to purchase',
      'de': '',
      'fr': '',
    },
    'yvmnbybj': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // A1FirstPage
  {
    'gqf0ocpc': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'ox50s461': {
      'en': 'Services at Your Fingertips',
      'de': '',
      'fr': '',
    },
    'rrgsrnbk': {
      'en': 'Login',
      'de': '',
      'fr': '',
    },
    'z6m7i7xv': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'lwn5a5ov': {
      'en':
          'Rediscover Luxembourg with MirHunn – your trusted path to finding the perfect service or product at your fingertips. From expert assistance to everyday needs, explore a world of possibilities tailored to your life.',
      'de': '',
      'fr': '',
    },
    'fpj2tuqm': {
      'en': 'Sign-Up as buyer',
      'de': '',
      'fr': '',
    },
    'bru5bbsf': {
      'en': 'or',
      'de': '',
      'fr': '',
    },
    'yv6ucmp5': {
      'en': 'Sign-Up as seller',
      'de': '',
      'fr': '',
    },
    'yfffhm4f': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'w0kqmeeo': {
      'en':
          'Exciting News for Seniors! MirHunn\'s exclusive offer, allowing easy access to services with just a phone call, is coming soon!',
      'de': '',
      'fr': '',
    },
    'rithv3qw': {
      'en': 'Registrate as a senior',
      'de': '',
      'fr': '',
    },
    'f5q97txe': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'b3o7p1d2': {
      'en': 'Services at Your Fingertips',
      'de': '',
      'fr': '',
    },
    'ypt68kzw': {
      'en': 'Login',
      'de': '',
      'fr': '',
    },
    'mgjem2ai': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'brp7oeey': {
      'en':
          'Rediscover Luxembourg with MirHunn – your trusted path to finding the perfect service or product at your fingertips. From expert assistance to everyday needs, explore a world of possibilities tailored to your life.',
      'de': '',
      'fr': '',
    },
    'wabiupr7': {
      'en': 'Sign-Up as buyer',
      'de': '',
      'fr': '',
    },
    'eqa77zcj': {
      'en': 'or',
      'de': '',
      'fr': '',
    },
    'kl4yfuqw': {
      'en': 'Sign-Up as seller',
      'de': '',
      'fr': '',
    },
    'zxio2cfl': {
      'en': 'MirHunn',
      'de': '',
      'fr': '',
    },
    'r43dfoc5': {
      'en':
          'Exciting News for Seniors! MirHunn\'s exclusive offer, allowing easy access to services with just a phone call, is coming soon!',
      'de': '',
      'fr': '',
    },
    'koqx5fx9': {
      'en': 'Registrate as a senior',
      'de': '',
      'fr': '',
    },
    'zj05lojb': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // A3BuyerRegistration
  {
    'k3yr03vz': {
      'en': 'Welcome to MirHunn!',
      'de': '',
      'fr': '',
    },
    'h90w4nud': {
      'en': 'Display Name',
      'de': '',
      'fr': '',
    },
    '9mo8l1jn': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'olxlp2mf': {
      'en': 'City',
      'de': '',
      'fr': '',
    },
    '7t3lgvq3': {
      'en': 'Street Adress',
      'de': '',
      'fr': '',
    },
    'vqb08xkd': {
      'en': 'Postal Code',
      'de': '',
      'fr': '',
    },
    'z9bdb14a': {
      'en': 'Password',
      'de': '',
      'fr': '',
    },
    '6yhgd1u6': {
      'en': 'Create Account',
      'de': '',
      'fr': '',
    },
    'pxs3ekj0': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // A2BuyerLogin
  {
    '4mnxwkwy': {
      'en': 'Get to my account',
      'de': '',
      'fr': '',
    },
    'vjstzuti': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    '5xb1ufr0': {
      'en': 'Password',
      'de': '',
      'fr': '',
    },
    'en10y36h': {
      'en': 'Forgot Password?',
      'de': '',
      'fr': '',
    },
    '36qlmt6x': {
      'en': 'Login',
      'de': '',
      'fr': '',
    },
    'xolh5gqa': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // A4ForgotPasswordLink
  {
    '97chgyuh': {
      'en': 'Forgot Password',
      'de': '',
      'fr': '',
    },
    'cv5i33gw': {
      'en': 'We will send you a reset link.',
      'de': '',
      'fr': '',
    },
    'bit0vlly': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'xfugm4iy': {
      'en': 'Send Link',
      'de': '',
      'fr': '',
    },
    'eae971cj': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // A5SellerRegistration
  {
    '9al2ckj7': {
      'en': 'Become a Provider',
      'de': '',
      'fr': '',
    },
    'm656faw0': {
      'en': 'Continue as Company',
      'de': '',
      'fr': '',
    },
    'rm69b28j': {
      'en':
          'Join MirHunn to reach local customers, increase visibility, manage services flexibly, and grow your business in a secure marketplace.',
      'de': '',
      'fr': '',
    },
    'cdtyqyhi': {
      'en': 'Continue as a Peer to Peer provider',
      'de': '',
      'fr': '',
    },
    's3gl3zmu': {
      'en':
          'Share your skills, talents, or innovations on MirHunn, connect with local clients, and turn your passion into income—all on your terms.',
      'de': '',
      'fr': '',
    },
    '79k9m22s': {
      'en': 'Create Your Seller Account',
      'de': '',
      'fr': '',
    },
    'crhnyo8s': {
      'en':
          'To ensure a smooth and secure registration process, creating a seller account is only available via our website using a desktop or laptop. Please visit our website on your computer to complete your seller profile and start offering your services or products!\n\n',
      'de': '',
      'fr': '',
    },
    'v5rti8wt': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowupaccounttypes
  {
    'yamkeba9': {
      'en': 'Account Types on MirHunn',
      'de': '',
      'fr': '',
    },
    '90qv8cnl': {
      'en': 'Your MirHunn Account',
      'de': '',
      'fr': '',
    },
    'qm379mon': {
      'en': 'Choose the Right Account Type for You',
      'de': '',
      'fr': '',
    },
    'ttrhdxge': {
      'en':
          'MirHunn offers four account types tailored to your needs. Here’s everything you need to know about each type:',
      'de': '',
      'fr': '',
    },
    'yflufva2': {
      'en':
          '1. Peer-to-Peer Provider\n\nWho is this for?\n\nIndividuals who want to offer services casually or as a side gig without establishing a formal business.\nOnce you submit your profile, our team reviews your information to ensure everything is complete. After approval, your services will become visible to potential buyers.\n\n\n2.Business Account\n\nWho is this for?\n\nRegistered companies or businesses that want to offer their services on MirHunn.\nBusiness profiles undergo a verification process to validate company information, VAT registration, and legitimacy.\n\n\n3. Buyer Account\n\nWho is this for?\n\nIndividuals looking to purchase services or products from providers on the platform.\n\n\n4.Advertiser Account\n\nWho is this for?\n\nCompanies or individuals who want to promote their products, services, or brand through MirHunn.',
      'de': '',
      'fr': '',
    },
    'vf4ue82i': {
      'en': 'Account Types on MirHunn',
      'de': '',
      'fr': '',
    },
    'vxjeg3e1': {
      'en': 'Choose the Right Account Type for You',
      'de': '',
      'fr': '',
    },
    'z60df73g': {
      'en':
          'MirHunn offers four account types tailored to your needs. Here’s everything you need to know about each type:',
      'de': '',
      'fr': '',
    },
    'akw13qnf': {
      'en':
          '1. Peer-to-Peer Provider\n\nWho is this for?\n\nIndividuals who want to offer services casually or as a side gig without establishing a formal business.\nOnce you submit your profile, our team reviews your information to ensure everything is complete. After approval, your services will become visible to potential buyers.\n\n\n2.Business Account\n\nWho is this for?\n\nRegistered companies or businesses that want to offer their services on MirHunn.\nBusiness profiles undergo a verification process to validate company information, VAT registration, and legitimacy.\n\n\n3. Buyer Account\n\nWho is this for?\n\nIndividuals looking to purchase services or products from providers on the platform.\n\n\n4.Advertiser Account\n\nWho is this for?\n\nCompanies or individuals who want to promote their products, services, or brand through MirHunn.',
      'de': '',
      'fr': '',
    },
    '4pxwgwu8': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowuppayments
  {
    'm60noea1': {
      'en': 'Payments on MirHunn: Simple, Secure, Seamless',
      'de': '',
      'fr': '',
    },
    '8zycbog2': {
      'en':
          'At MirHunn, we’ve made payments effortless for both buyers and sellers. Here’s what you can expect:',
      'de': '',
      'fr': '',
    },
    '67s7wwog': {
      'en':
          'Safe and Secure: All transactions are processed through Stripe, ensuring your payments are protected with the highest security standards.\nFast and Reliable: Payments are completed instantly, with sellers receiving their payouts directly to their bank accounts.\nTransparent Fees: MirHunn takes a small \n8% commission on each transaction.\nWhether you’re buying or selling, our payment system ensures a smooth experience every time. Pay with confidence, get paid with ease.',
      'de': '',
      'fr': '',
    },
    'xtto00b6': {
      'en': 'Payments on MirHunn: Simple, Secure, Seamless',
      'de': '',
      'fr': '',
    },
    'la0katk0': {
      'en':
          'At MirHunn, we’ve made payments effortless for both buyers and sellers. Here’s what you can expect:',
      'de': '',
      'fr': '',
    },
    'prtt13ph': {
      'en':
          'Safe and Secure: All transactions are processed through Stripe, ensuring your payments are protected with the highest security standards.\n\nFast and Reliable: Payments are completed instantly, with sellers receiving their payouts directly to their bank accounts.\n\nTransparent Fees: MirHunn takes a small \n8% commission on each transaction.\nWhether you’re buying or selling, our payment system ensures a smooth experience every time. Pay with confidence, get paid with ease.',
      'de': '',
      'fr': '',
    },
    'd7nzrx9i': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowupguidelines
  {
    'm1m9iruh': {
      'en': 'General Guidelines',
      'de': '',
      'fr': '',
    },
    'by81josu': {
      'en':
          'Respect the Community:\nMaintain polite and professional communication at all times.\nRefrain from discriminatory, offensive, or inappropriate behavior.\n\nFollow Legal Requirements:\nOnly offer and purchase services/products that comply with local laws and regulations.\nEnsure your transactions are legal and transparent.\n\nKeep Transactions on MirHunn:\nAll payments and communications should be done through MirHunn to ensure security and support coverage.\nAvoid direct payments or private agreements outside the platform.\n\nFor Buyers:\nBe Clear About Your Needs\nProvide detailed information when requesting a service or purchasing a product to avoid misunderstandings.\nReview Before Confirming\nAlways double-check the details of the service or product, including price, timing, and conditions, before making a purchase.\nRespect Deadlines\nAllow service providers enough time to deliver quality results. If there’s an issue, communicate with the provider first.\n\nFor Service Providers:\nProvide Accurate Information\nEnsure your profile, service descriptions, and prices are complete and truthful.\nDeliver on Time\nStick to the agreed deadlines and communicate proactively if delays occur.\nQuality Matters\nAim to provide high-quality services or products to build trust and earn positive reviews.\n',
      'de': '',
      'fr': '',
    },
    'tt1le5gq': {
      'en': 'Safety Guidelines',
      'de': '',
      'fr': '',
    },
    '3os5xhjk': {
      'en':
          '\nProtect Your Information\n\nDo not share sensitive personal details outside MirHunn\'s secure environment.\nUse Secure Payments\n\nAll payments are processed through Stripe, ensuring safety and compliance with international security standards.\nReport Suspicious Activity\n\nIf you encounter any fraudulent or suspicious behavior, report it immediately to MirHunn Support.',
      'de': '',
      'fr': '',
    },
    'a7jxhs7k': {
      'en': 'General Guidelines',
      'de': '',
      'fr': '',
    },
    'pye790rv': {
      'en':
          'Respect the Community:\nMaintain polite and professional communication at all times.\nRefrain from discriminatory, offensive, or inappropriate behavior.\n\nFollow Legal Requirements:\nOnly offer and purchase services/products that comply with local laws and regulations.\nEnsure your transactions are legal and transparent.\n\nKeep Transactions on MirHunn:\nAll payments and communications should be done through MirHunn to ensure security and support coverage.\nAvoid direct payments or private agreements outside the platform.\n\nFor Buyers:\nBe Clear About Your Needs\nProvide detailed information when requesting a service or purchasing a product to avoid misunderstandings.\nReview Before Confirming\nAlways double-check the details of the service or product, including price, timing, and conditions, before making a purchase.\nRespect Deadlines\nAllow service providers enough time to deliver quality results. If there’s an issue, communicate with the provider first.\n\nFor Service Providers:\nProvide Accurate Information\nEnsure your profile, service descriptions, and prices are complete and truthful.\nDeliver on Time\nStick to the agreed deadlines and communicate proactively if delays occur.\nQuality Matters\nAim to provide high-quality services or products to build trust and earn positive reviews.\n',
      'de': '',
      'fr': '',
    },
    '4jqopqhm': {
      'en': 'Safety Guidelines',
      'de': '',
      'fr': '',
    },
    '1kmw139n': {
      'en':
          '\nProtect Your Information\n\nDo not share sensitive personal details outside MirHunn\'s secure environment.\nUse Secure Payments\n\nAll payments are processed through Stripe, ensuring safety and compliance with international security standards.\nReport Suspicious Activity\n\nIf you encounter any fraudulent or suspicious behavior, report it immediately to MirHunn Support.',
      'de': '',
      'fr': '',
    },
    'w0vo0t3l': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowuppublicdemands
  {
    '4luqb2kp': {
      'en': 'Public Demand: Your Shortcut to the Perfect Match!',
      'de': '',
      'fr': '',
    },
    '2f5uoisd': {
      'en':
          'Need something specific but don’t know where to start? \n\nPublic Demand lets you post your request, making it visible to all the right sellers on MirHunn.',
      'de': '',
      'fr': '',
    },
    'a7ojwvj6': {
      'en': 'How It Works:',
      'de': '',
      'fr': '',
    },
    'a7bzfed7': {
      'en':
          'Describe what you need.\nSellers see your demand and decide if they can help. The right seller accepts, and you finalize the details.\n\nIt’s fast, easy, and connects you directly with the best providers for your needs. No endless searching—let the experts come to you!\n\nTry it now and get exactly what you’re looking for.',
      'de': '',
      'fr': '',
    },
    '3biu8dim': {
      'en': 'Public Demand: Your Shortcut to the Perfect Match!',
      'de': '',
      'fr': '',
    },
    '50oaadwc': {
      'en':
          'Need something specific but don’t know where to start? \n\nPublic Demand lets you post your request, making it visible to all the right sellers on MirHunn.',
      'de': '',
      'fr': '',
    },
    'ryzxkqf0': {
      'en': 'How It Works:',
      'de': '',
      'fr': '',
    },
    '3q2h1fdo': {
      'en':
          'Describe what you need.\nSellers see your demand and decide if they can help. The right seller accepts, and you finalize the details.\n\nIt’s fast, easy, and connects you directly with the best providers for your needs. No endless searching—let the experts come to you!\n\nTry it now and get exactly what you’re looking for.',
      'de': '',
      'fr': '',
    },
    'fufiq3g6': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowupselling
  {
    'qvq9zdpl': {
      'en':
          'Start selling with confidence on MirHunn! Your success is our priority.',
      'de': '',
      'fr': '',
    },
    '4yw8hcd4': {
      'en': 'How to Start Selling',
      'de': '',
      'fr': '',
    },
    'at8dkzxm': {
      'en':
          '\nCreate Your Profile:\nSign up and complete your profile with accurate details about yourself or your business.\n\nList Your Services or Products:\nClick “Add Service” or “Add Product” in your profile page.\nProvide a clear title, detailed description, pricing, and upload high-quality images.\nSelect the appropriate category to help buyers find your listings easily.\n\nGet Verified:\nOnce submitted, your service or product will be reviewed by MirHunn’s team for approval before it becomes visible to buyers.\n',
      'de': '',
      'fr': '',
    },
    'e32zea43': {
      'en': 'Why Sell on MirHunn?',
      'de': '',
      'fr': '',
    },
    '0q4384ut': {
      'en':
          'Secure Payments\nAll payments are processed via Stripe, ensuring a fast and secure payout directly to your bank account.\nMirHunn’s payment protection guarantees you’ll get paid for completed orders.\n\nFlexibility\nYou choose what to sell, set your own prices, and decide when to work.\nWhether full-time or part-time, MirHunn adapts to your schedule.\n\nBuilt-In Marketing\nMirHunn helps showcase your services/products to a wide audience in Luxembourg, saving you time and effort.',
      'de': '',
      'fr': '',
    },
    'l8bdfqmm': {
      'en':
          'Start selling with confidence on MirHunn! Your success is our priority.',
      'de': '',
      'fr': '',
    },
    'co93kerg': {
      'en': 'How to Start Selling',
      'de': '',
      'fr': '',
    },
    '1tk8npxo': {
      'en':
          '\nCreate Your Profile:\nSign up and complete your profile with accurate details about yourself or your business.\n\nList Your Services or Products:\nClick “Add Service” or “Add Product” in your profile page.\nProvide a clear title, detailed description, pricing, and upload high-quality images.\nSelect the appropriate category to help buyers find your listings easily.\n\nGet Verified:\nOnce submitted, your service or product will be reviewed by MirHunn’s team for approval before it becomes visible to buyers.\n',
      'de': '',
      'fr': '',
    },
    '8fqqg6f4': {
      'en': 'Why Sell on MirHunn?',
      'de': '',
      'fr': '',
    },
    'hgtwy780': {
      'en':
          'Secure Payments\nAll payments are processed via Stripe, ensuring a fast and secure payout directly to your bank account.\nMirHunn’s payment protection guarantees you’ll get paid for completed orders.\n\nFlexibility\nYou choose what to sell, set your own prices, and decide when to work.\nWhether full-time or part-time, MirHunn adapts to your schedule.\n\nBuilt-In Marketing\nMirHunn helps showcase your services/products to a wide audience in Luxembourg, saving you time and effort.',
      'de': '',
      'fr': '',
    },
    'v7kex5ub': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // Supporthelpfollowupbuying
  {
    '0xb966lz': {
      'en': 'Buying on MirHunn: Simple, Secure, and Convenient',
      'de': '',
      'fr': '',
    },
    'wukkhy00': {
      'en':
          'Welcome to MirHunn, where finding the perfect service or product is easy! Browse through a wide range of offerings from trusted providers in categories like education, wellness, gardening, and more. Whether you’re looking for a yoga class, a tech repair, or a unique product, you’ll find it here.',
      'de': '',
      'fr': '',
    },
    'f7a3ztba': {
      'en': 'Why Buying on MirHunn is Safe',
      'de': '',
      'fr': '',
    },
    'r0362yzv': {
      'en':
          'Powered by Stripe\nAll payments are securely processed through Stripe, a world-renowned payment platform trusted by millions of businesses. Your financial data is encrypted and protected.\n\nPayment Protection\nYour payment is held securely until the service or product is delivered. Funds are only released to the provider when you confirm satisfaction.\n\nDispute Support\nIf something goes wrong, our team is here to help resolve disputes quickly and fairly.\n\nRefund Guarantee\nIf the service provider is unable to fulfill your order, you’ll receive a full refund.',
      'de': '',
      'fr': '',
    },
    'qeigcmzy': {
      'en': 'Tips for Safe Buying',
      'de': '',
      'fr': '',
    },
    'vy2bij9m': {
      'en':
          'Check Provider Profiles\nLook at ratings, reviews, and the provider’s details to ensure you’re choosing the best fit for your needs.\n\nCommunicate Clearly\nUse the messaging feature to clarify any details before purchasing.\n\nKeep Transactions on MirHunn\nNever pay outside the platform to ensure your payment is protected by our secure system.\n\n',
      'de': '',
      'fr': '',
    },
    'zjzrga4d': {
      'en': 'Buying on MirHunn: Simple, Secure, and Convenient',
      'de': '',
      'fr': '',
    },
    '1a4zek4d': {
      'en':
          'Welcome to MirHunn, where finding the perfect service or product is easy! Browse through a wide range of offerings from trusted providers in categories like education, wellness, gardening, and more. Whether you’re looking for a yoga class, a tech repair, or a unique product, you’ll find it here.',
      'de': '',
      'fr': '',
    },
    'da7ysx2x': {
      'en': 'Why Buying on MirHunn is Safe',
      'de': '',
      'fr': '',
    },
    'p375fert': {
      'en':
          'Powered by Stripe\nAll payments are securely processed through Stripe, a world-renowned payment platform trusted by millions of businesses. Your financial data is encrypted and protected.\n\nPayment Protection\nYour payment is held securely until the service or product is delivered. Funds are only released to the provider when you confirm satisfaction.\n\nDispute Support\nIf something goes wrong, our team is here to help resolve disputes quickly and fairly.\n\nRefund Guarantee\nIf the service provider is unable to fulfill your order, you’ll receive a full refund.',
      'de': '',
      'fr': '',
    },
    'rh7b98lw': {
      'en': 'Tips for Safe Buying',
      'de': '',
      'fr': '',
    },
    'x49sm0qx': {
      'en':
          'Check Provider Profiles\nLook at ratings, reviews, and the provider’s details to ensure you’re choosing the best fit for your needs.\n\nCommunicate Clearly\nUse the messaging feature to clarify any details before purchasing.\n\nKeep Transactions on MirHunn\nNever pay outside the platform to ensure your payment is protected by our secure system.\n\n',
      'de': '',
      'fr': '',
    },
    'muh3xeyp': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // yprofilepageEditProfile
  {
    'gxp3b6u0': {
      'en': 'Dashboard ',
      'de': '',
      'fr': '',
    },
    'mxufuw3h': {
      'en': 'Explore',
      'de': '',
      'fr': '',
    },
    'j11m90ke': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'ir6fgs9u': {
      'en': 'Profile Details',
      'de': '',
      'fr': '',
    },
    'molbjigp': {
      'en': 'Display Name',
      'de': '',
      'fr': '',
    },
    '3585fft2': {
      'en': 'Email',
      'de': '',
      'fr': '',
    },
    'zi4u7q0m': {
      'en': 'Phone Number',
      'de': '',
      'fr': '',
    },
    '29nvksua': {
      'en': 'City',
      'de': '',
      'fr': '',
    },
    '97sxxdc4': {
      'en': 'Street Address',
      'de': '',
      'fr': '',
    },
    't8a8l4af': {
      'en': 'Postal Code',
      'de': '',
      'fr': '',
    },
    'v5mv53vx': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'zjgl51iz': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'ssl5xpee': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '8m6dj46r': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'jz7w3bxe': {
      'en': 'Edit Profile Image',
      'de': '',
      'fr': '',
    },
    'qx5yuz15': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    '7ypgmgwg': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'zp17n9ha': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    '7muh7klr': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    '05lmlsg1': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    'ed89w2rj': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'hd3x6w1e': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    'k9hz5j4g': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'ssoaq9aa': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'eehq71gw': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    '56sxpqxu': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'kpf6b4ug': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'rp7uxeri': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'krdz51lh': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'a78paqvh': {
      'en': 'Profile Details',
      'de': '',
      'fr': '',
    },
    'pqunnbsl': {
      'en': 'Display Name',
      'de': '',
      'fr': '',
    },
    'ue61z32q': {
      'en': 'Email',
      'de': '',
      'fr': '',
    },
    'wkgch606': {
      'en': 'Phone Number',
      'de': '',
      'fr': '',
    },
    'izfjnkuh': {
      'en': 'City',
      'de': '',
      'fr': '',
    },
    'msay9pl5': {
      'en': 'Postal Code',
      'de': '',
      'fr': '',
    },
    'h6bo72vd': {
      'en': 'Street Address',
      'de': '',
      'fr': '',
    },
    '968zidhp': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '1pwkupms': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '5wj2wbyn': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'mjun78l2': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'tkx44yvh': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'agxdav8r': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'zt39o8cj': {
      'en': 'Edit Profile Image',
      'de': '',
      'fr': '',
    },
    '3d7bzkhl': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // xprofilepageEditService
  {
    'um0eq08o': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    '5gtlqx38': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '8ypq80n7': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'nbtjj9ur': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'r0n8hmed': {
      'en': 'Video',
      'de': '',
      'fr': '',
    },
    't8x129et': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'ybxosjff': {
      'en': 'Edit your Service Gallery',
      'de': '',
      'fr': '',
    },
    'g4y8pa5o': {
      'en': 'To save changes, click the button on the right',
      'de': '',
      'fr': '',
    },
    '497754hf': {
      'en': 'Per Hour',
      'de': '',
      'fr': '',
    },
    '624jw2aj': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'milty8iz': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '25t27bwl': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    '9u5c8xtx': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    'ngj8el2r': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    '731fwqcs': {
      'en': 'Per Session',
      'de': '',
      'fr': '',
    },
    'psmc70ya': {
      'en': 'Select Location',
      'de': '',
      'fr': '',
    },
    'wedzwgi9': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '2hz91od7': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    'qpbg1lvd': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    '8fbu1rpk': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    '2863493c': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'hk7jexjp': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'c0dmh1lc': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'lo0cmlie': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    '0n9rwf4t': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    'd3p6vu5o': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    'fe2ydw7h': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'yjhd86j4': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'u5e857ts': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'rn2jfpt0': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'pkxts5ae': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    '1ehomv47': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    'xmz4r9cj': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'jy7kvtwd': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    'g08vss3x': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    'wydfzhqz': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'f3wzzute': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'x2pcg5tm': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    'cxy9r4k4': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    'qbg6vdt6': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'bezirmno': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    'oh3fr0d2': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'w3o1voxd': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'gxujjeej': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    'swhn1zxv': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    '9fdaoz0r': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'bpxsc0fa': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '1kpkk64c': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'a0tenqdy': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    '19xkb6uv': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'eswixljz': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'ptqk98xo': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    '90i6yx3y': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    'k375vw62': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    '5cagvfds': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    '8iwiilch': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    'reabfjw6': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'phzu6v00': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'qnjqmuac': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    '05b9c275': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'triwneyf': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    'v1a2kg0z': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    '8n381tvr': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    '7e8k1yjg': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'ni85lioi': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    '1ntv44z0': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    '578zfdcc': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    'ol7ixvfm': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    'ibgglf6l': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    '6j7ub1ut': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'eup1wiy9': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'pa6cw5u4': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '12325jr7': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    '5saq6ab8': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    'ard6jcl3': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    '1rv3cauz': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    '2rrorrcx': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'z4e407ql': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'nkdmsi05': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'tkjegkgy': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'lfo9xfw4': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'mprdqrxv': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    '2ew7qt50': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'vm65y7k5': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    'dwu245lc': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    'crmft0fq': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'a4zfu6ay': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'o84c2k4s': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    'f7okff5s': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    '48yk03gb': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'gbo4oang': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    'o8117fgd': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'lt66yvk9': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    '9g1uaiqf': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    't42jp9ky': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'y0ccavb7': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'idywcaol': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '3wqmp826': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'w2d6s2vm': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    'dcyd13q2': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'rvu3h0az': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'v6tys00k': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'tggvb4of': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    'qgebh00e': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    '2bkqgf5e': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    '5emfxbzf': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    '0xckf5lt': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'n98jj8x8': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'u8t1gtny': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    'xzerh7v6': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    '27v2dlij': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    'mets9f01': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'kv7yn351': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'pfusg4ss': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'bix0lvqr': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'g4aw4ksa': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    '56hzsfzy': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    'sfp7zjwy': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    'ywrn1p47': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    'xk3vsjsf': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'fn79hyzn': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    'ogtlvnbl': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'zllaseax': {
      'en': 'Monday',
      'de': '',
      'fr': '',
    },
    '91lzn5q0': {
      'en': 'Tuesday',
      'de': '',
      'fr': '',
    },
    'ngdmyj8l': {
      'en': 'Wednesday',
      'de': '',
      'fr': '',
    },
    'zdwubx6n': {
      'en': 'Thursday',
      'de': '',
      'fr': '',
    },
    'g6m9cuk9': {
      'en': 'Friday',
      'de': '',
      'fr': '',
    },
    'tpa24npb': {
      'en': 'Saturday',
      'de': '',
      'fr': '',
    },
    '4f5ongbj': {
      'en': 'Sunday',
      'de': '',
      'fr': '',
    },
    'l7k1pw4z': {
      'en': 'Choose the duration of the session in weeks',
      'de': '',
      'fr': '',
    },
    'gcswyeto': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    '2ns2qkao': {
      'en': '1 Week',
      'de': '',
      'fr': '',
    },
    'j5rpr484': {
      'en': '2 Weeks',
      'de': '',
      'fr': '',
    },
    'zf7h7nzw': {
      'en': '3 Weeks',
      'de': '',
      'fr': '',
    },
    'wz1youco': {
      'en': '4 Weeks',
      'de': '',
      'fr': '',
    },
    '0xf3qqjl': {
      'en': '5 Weeks',
      'de': '',
      'fr': '',
    },
    'eh86a55r': {
      'en': '6 Weeks',
      'de': '',
      'fr': '',
    },
    'erfo1sgr': {
      'en': '7 Weeks',
      'de': '',
      'fr': '',
    },
    'wtdh1tt0': {
      'en': '8 Weeks',
      'de': '',
      'fr': '',
    },
    'vjj7bsiy': {
      'en': '9 Weeks',
      'de': '',
      'fr': '',
    },
    'f9occm7t': {
      'en': '10 Weeks',
      'de': '',
      'fr': '',
    },
    'poynpvan': {
      'en': '+ 10 Weeks',
      'de': '',
      'fr': '',
    },
    'm3difzp1': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    'f8dcpc6f': {
      'en': 'Select the Location',
      'de': '',
      'fr': '',
    },
    'h01n0psc': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'ig44ztc5': {
      'en': 'At Seller\'s Address',
      'de': '',
      'fr': '',
    },
    't4g2oysu': {
      'en': 'At Buyer\'s Address',
      'de': '',
      'fr': '',
    },
    'qh3832pk': {
      'en': 'At the Address in the Description',
      'de': '',
      'fr': '',
    },
    'obdk96ru': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '47ecy58d': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'i5ayfl59': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'pleqfsnd': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    'dsol334l': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    'm3nnv2r9': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    'fl3wdp82': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'l9xqrmnb': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'lejldnck': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'wv6i6tx5': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'lnzywtk6': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'z0q0r8ut': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    'wiwkjuzg': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    '2jbm8da1': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    '03lu9h5m': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    '6wpz730m': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'h8zwhkkc': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    '8y7hvke7': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    'ntwsijam': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    'h9nxnt8u': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'zclcp0zm': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    'jgm3dgpy': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'mcnm9cxl': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'zq1p2gpe': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    'ox3p54tl': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'gcwmyg25': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'jq0kpns0': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'jinq2sa0': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    '5w2gzx7s': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    '3x0fc6tt': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'n2j5ckd1': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    '309xjy97': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    '0binwv3y': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    'gm96u84n': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    'cp6j40xn': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    'cmaowna3': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    'mlnsnty1': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    '6y5futk4': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'uwdx9ed4': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    '6lvqprxc': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'e6gdeeyq': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    'gdu4iwb7': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'yvlx5wrq': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    '9zyl5ue1': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'dhbwvqr4': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    '2qg0910q': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    '5yutzsjk': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    'g98rjs79': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    '7o888bx0': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    'e9ce87qz': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'gcqr0sfp': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'kqpoq07e': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'aye27w7b': {
      'en': '00:00',
      'de': '',
      'fr': '',
    },
    'snw9xfo4': {
      'en': '00:30',
      'de': '',
      'fr': '',
    },
    '1zbfbpyi': {
      'en': '01:00',
      'de': '',
      'fr': '',
    },
    'gdza43mn': {
      'en': '01:30',
      'de': '',
      'fr': '',
    },
    'lk01osm7': {
      'en': '02:00',
      'de': '',
      'fr': '',
    },
    'd7fr73wd': {
      'en': '02:30',
      'de': '',
      'fr': '',
    },
    'b32m13it': {
      'en': '03:00',
      'de': '',
      'fr': '',
    },
    'sex4wqep': {
      'en': '03:30',
      'de': '',
      'fr': '',
    },
    'y084osky': {
      'en': '04:00',
      'de': '',
      'fr': '',
    },
    'ld1ty0xo': {
      'en': '04:30',
      'de': '',
      'fr': '',
    },
    'wknvthwh': {
      'en': '05:00',
      'de': '',
      'fr': '',
    },
    'e29ug9nx': {
      'en': '05:30',
      'de': '',
      'fr': '',
    },
    'ygdzd5ny': {
      'en': '06:00',
      'de': '',
      'fr': '',
    },
    '3d2klkfg': {
      'en': '06:30',
      'de': '',
      'fr': '',
    },
    'x10nngpv': {
      'en': '07:00',
      'de': '',
      'fr': '',
    },
    'xyhic2ty': {
      'en': '07:30',
      'de': '',
      'fr': '',
    },
    '3y299v0s': {
      'en': '08:00',
      'de': '',
      'fr': '',
    },
    '8clqs5pf': {
      'en': '08:30',
      'de': '',
      'fr': '',
    },
    'elcvclvc': {
      'en': '09:00',
      'de': '',
      'fr': '',
    },
    '5wvboevv': {
      'en': '09:30',
      'de': '',
      'fr': '',
    },
    'nd3g8n1d': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'e4crw0ol': {
      'en': '10:30',
      'de': '',
      'fr': '',
    },
    '1xfee5rj': {
      'en': '11:00',
      'de': '',
      'fr': '',
    },
    'xkk99o8l': {
      'en': '11:30',
      'de': '',
      'fr': '',
    },
    'pfkpkusd': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    '7v8gsrru': {
      'en': '12:30',
      'de': '',
      'fr': '',
    },
    'ktwp1gb1': {
      'en': '13:00',
      'de': '',
      'fr': '',
    },
    '7fzuzpt4': {
      'en': '13:30',
      'de': '',
      'fr': '',
    },
    'ap94kkwr': {
      'en': '14:00',
      'de': '',
      'fr': '',
    },
    'm28sgq1g': {
      'en': '14:30',
      'de': '',
      'fr': '',
    },
    'xtii1nen': {
      'en': '15:00',
      'de': '',
      'fr': '',
    },
    '1xvb9j4j': {
      'en': '15:30',
      'de': '',
      'fr': '',
    },
    'mm3ivxi9': {
      'en': '16:00',
      'de': '',
      'fr': '',
    },
    't59dw8bl': {
      'en': '16:30',
      'de': '',
      'fr': '',
    },
    'a58td96c': {
      'en': '17:00',
      'de': '',
      'fr': '',
    },
    'ga28qhd1': {
      'en': '17:30',
      'de': '',
      'fr': '',
    },
    'txqx6k0g': {
      'en': '18:00',
      'de': '',
      'fr': '',
    },
    'gy36f9w1': {
      'en': '18:30',
      'de': '',
      'fr': '',
    },
    'knyhug4t': {
      'en': '19:00',
      'de': '',
      'fr': '',
    },
    'l58kc6tb': {
      'en': '19:30',
      'de': '',
      'fr': '',
    },
    'mqp9u2n7': {
      'en': '20:00',
      'de': '',
      'fr': '',
    },
    'tv1m1ltb': {
      'en': '20:30',
      'de': '',
      'fr': '',
    },
    'updpmc93': {
      'en': '21:00',
      'de': '',
      'fr': '',
    },
    'zmfk884o': {
      'en': '21:30',
      'de': '',
      'fr': '',
    },
    'axpz9w6h': {
      'en': '22:00',
      'de': '',
      'fr': '',
    },
    'k3s442hs': {
      'en': '22:30',
      'de': '',
      'fr': '',
    },
    '9r4fjjsa': {
      'en': '23:00',
      'de': '',
      'fr': '',
    },
    'd75ee6sz': {
      'en': '23:30',
      'de': '',
      'fr': '',
    },
    'e5q4hcaw': {
      'en': 'Select the day(s)',
      'de': '',
      'fr': '',
    },
    '57e4r3oj': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'xdxiz21t': {
      'en': 'Monday',
      'de': '',
      'fr': '',
    },
    '0iu7rck4': {
      'en': 'Tuesday',
      'de': '',
      'fr': '',
    },
    'z9ch67nr': {
      'en': 'Wednesday',
      'de': '',
      'fr': '',
    },
    '888jq8vk': {
      'en': 'Thursday',
      'de': '',
      'fr': '',
    },
    'muxt2ovo': {
      'en': 'Friday',
      'de': '',
      'fr': '',
    },
    'shbvczed': {
      'en': 'Saturday',
      'de': '',
      'fr': '',
    },
    'yolmma07': {
      'en': 'Sunday',
      'de': '',
      'fr': '',
    },
    '0pv4jz31': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'ouyzs0rs': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    '0e97ispk': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'h47txovb': {
      'en': 'Seller delivers',
      'de': '',
      'fr': '',
    },
    '1cahao8g': {
      'en': 'Buyer picks up',
      'de': '',
      'fr': '',
    },
    'jmrm34ol': {
      'en': 'Digital',
      'de': '',
      'fr': '',
    },
    '2xbpwrn8': {
      'en': 'To save changes, click the button on the right',
      'de': '',
      'fr': '',
    },
    'imaetxdy': {
      'en': 'Finish and proceed',
      'de': '',
      'fr': '',
    },
    'lzezpidm': {
      'en': 'About Us',
      'de': '',
      'fr': '',
    },
    'fplwxovk': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '4nzdlbre': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '3dp64v2s': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'risw60j0': {
      'en': 'Certifications',
      'de': '',
      'fr': '',
    },
    '4v8r2d5x': {
      'en': 'More Photos',
      'de': '',
      'fr': '',
    },
    'x1v9vjy5': {
      'en': 'Edit your Service Gallery',
      'de': '',
      'fr': '',
    },
    '2wj0ftjj': {
      'en': 'To save changes, click the button on the right',
      'de': '',
      'fr': '',
    },
    'f86m3r00': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'phxtz2rp': {
      'en': 'Name of the pricing template',
      'de': '',
      'fr': '',
    },
    'notyxume': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'fnlmerr2': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'xct48onn': {
      'en': 'Name of the pricing template',
      'de': '',
      'fr': '',
    },
    '7nw9hg4n': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'n1423mmw': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'nz06tgth': {
      'en': 'Name of the pricing template',
      'de': '',
      'fr': '',
    },
    '4edtxgdw': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'jobcdlgk': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    'kdyy4x2a': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    '8yz9hdvs': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'vzy1748x': {
      'en': 'Name of the pricing template',
      'de': '',
      'fr': '',
    },
    'q74hmalk': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'n3xmtwpe': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    '0v30m7bj': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    'nu27hzjg': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // vEditservicegallery
  {
    'i7rjdqki': {
      'en': 'Edit  Service Gallery',
      'de': '',
      'fr': '',
    },
    'uqtcepip': {
      'en': '1. Choose a main picture',
      'de': '',
      'fr': '',
    },
    'n5lc0o26': {
      'en': '2. Choose a background picture',
      'de': '',
      'fr': '',
    },
    '39dwgrl6': {
      'en': '4. Upload more pictures',
      'de': '',
      'fr': '',
    },
    'w6d0uvef': {
      'en':
          '( any type of certification would be effective for your provided service to be accepted by MH)',
      'de': '',
      'fr': '',
    },
    'x7afhkaa': {
      'en': 'Add Photos',
      'de': '',
      'fr': '',
    },
    '8q8ciifq': {
      'en': '5. Upload a video',
      'de': '',
      'fr': '',
    },
    'r420umgp': {
      'en': 'Support',
      'de': '',
      'fr': '',
    },
    'ue0vr24z': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    '2ynr26la': {
      'en': 'Terms of service',
      'de': '',
      'fr': '',
    },
    'oaqlc4ck': {
      'en': 'Trust and safety',
      'de': '',
      'fr': '',
    },
    'cy44yp6t': {
      'en': 'Privacy policy',
      'de': '',
      'fr': '',
    },
    '7b8rtyvw': {
      'en': 'About',
      'de': '',
      'fr': '',
    },
    'qw95uz7t': {
      'en': 'Our offer to seniors',
      'de': '',
      'fr': '',
    },
    '1crkznf5': {
      'en': 'Luxembourg News',
      'de': '',
      'fr': '',
    },
    'uepdl1ij': {
      'en': 'Accredition',
      'de': '',
      'fr': '',
    },
    'ic1tvpue': {
      'en': 'Corporate services',
      'de': '',
      'fr': '',
    },
    '0injui4l': {
      'en': 'Company',
      'de': '',
      'fr': '',
    },
    'qat4nm21': {
      'en': 'Peer-to-Peer',
      'de': '',
      'fr': '',
    },
    'q0lkp72z': {
      'en': 'Partnerships',
      'de': '',
      'fr': '',
    },
    'dfsi13cl': {
      'en': 'Marketing',
      'de': '',
      'fr': '',
    },
    'q50ctwpv': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // ClickedPublicDemandWithChat
  {
    '3lbikgnf': {
      'en': 'Demand',
      'de': '',
      'fr': '',
    },
    'kzvf1svq': {
      'en': 'From ',
      'de': '',
      'fr': '',
    },
    'zmlb48lf': {
      'en':
          '\"Please only press \'Accept\' if you believe your skills and experience match the buyer\'s request.\nBy accepting, you confirm that you are capable of delivering the requested service to a high standard. This ensures a positive experience for both you and the buyer.\"',
      'de': '',
      'fr': '',
    },
    '0cikl7jt': {
      'en': 'Accept',
      'de': '',
      'fr': '',
    },
    'l2kembp7': {
      'en': 'Demand',
      'de': '',
      'fr': '',
    },
    'rd3cezm7': {
      'en': 'From ',
      'de': '',
      'fr': '',
    },
    'thgm15d4': {
      'en':
          '\"Please only press \'Accept\' if you believe your skills and experience match the buyer\'s request.\nBy accepting, you confirm that you are capable of delivering the requested service to a high standard. This ensures a positive experience for both you and the buyer.\"',
      'de': '',
      'fr': '',
    },
    'nfsd06tx': {
      'en': 'Accept',
      'de': '',
      'fr': '',
    },
    'rro5l4w8': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // PublicDemandList
  {
    'i6mxk075': {
      'en': 'Public Demands ',
      'de': '',
      'fr': '',
    },
    '17pvk6tg': {
      'en': '\$143/night',
      'de': '',
      'fr': '',
    },
    'c27doocd': {
      'en': 'Little Mountain House',
      'de': '',
      'fr': '',
    },
    '0ykhzmvh': {
      'en':
          'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
      'de': '',
      'fr': '',
    },
    'ozfvr1ye': {
      'en': '\$182/night',
      'de': '',
      'fr': '',
    },
    'skvl4rrl': {
      'en': 'Ski Cabin',
      'de': '',
      'fr': '',
    },
    'usds975p': {
      'en':
          'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
      'de': '',
      'fr': '',
    },
    'p22cdeew': {
      'en': '\$182/night',
      'de': '',
      'fr': '',
    },
    '7ftzt33t': {
      'en': 'Ski Cabin',
      'de': '',
      'fr': '',
    },
    '15iwz1w6': {
      'en':
          'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway. Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
      'de': '',
      'fr': '',
    },
    'puqevjdo': {
      'en': '\$182/night',
      'de': '',
      'fr': '',
    },
    'h59pex3k': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // usageforpayselectionphone
  {
    '3k3lkq7u': {
      'en': 'Per Hour Packet:  ',
      'de': '',
      'fr': '',
    },
    'kz50t7nj': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'f5qnhmjb': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '65ehnklc': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '8rq4cl01': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'mwegdlya': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'fdl5gpc3': {
      'en': 'Price per hour',
      'de': '',
      'fr': '',
    },
    '27caa7p5': {
      'en': 'Manage Schedule ',
      'de': '',
      'fr': '',
    },
    'pf1316ri': {
      'en': 'Per Session Packet:',
      'de': '',
      'fr': '',
    },
    '5jlknuzm': {
      'en': 'Per Session Packet:',
      'de': '',
      'fr': '',
    },
    'wi27vgzm': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'tyxy4w0c': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'jjdyttzu': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'gu8imwzt': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'unn24luh': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'kysfmqtj': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    '8kszv1hl': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'br0gw2si': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'u9vk3a5a': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'br4rew0m': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'g9b5okfb': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'dv70aumw': {
      'en': 'Total number of hours',
      'de': '',
      'fr': '',
    },
    '36i9rlyr': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'iad4u80g': {
      'en': 'Price per session',
      'de': '',
      'fr': '',
    },
    'xysdiciq': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'p5nt3oac': {
      'en': 'Per Program Packet:  ',
      'de': '',
      'fr': '',
    },
    't8v67i4f': {
      'en': 'Per Program',
      'de': '',
      'fr': '',
    },
    'py3fsruo': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'o3xhzkgu': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'l4v7fiol': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '4yznw19j': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'csi7xcej': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'upi2v0v5': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'jxgbgyv5': {
      'en': 'Starting Time',
      'de': '',
      'fr': '',
    },
    'f06spn9s': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'h00fvwkj': {
      'en': 'Finishing Time',
      'de': '',
      'fr': '',
    },
    '2ethohlt': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    '9lqw10ol': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    'ph24tksb': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    '9srk8bjq': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'xgupo4q3': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'pylr2efc': {
      'en': 'Per Product',
      'de': '',
      'fr': '',
    },
    'z6zr39ue': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'qd0hopgb': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'gdtd945v': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'fy13jsb4': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'y0evvxqr': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '4u7eql2l': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '2sy6tub9': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'd5brwbbg': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'p6sme0ne': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'dg4jrwrh': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    '8nm5z1oj': {
      'en': 'Price per Product',
      'de': '',
      'fr': '',
    },
    '81ugchxi': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'mb2c8745': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MyPerhourforPHONE
  {
    '3cjwusfn': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'f03kpllg': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'xbph28tl': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '2iglbedp': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '44420bh2': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '3kl8n820': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'q70fwimm': {
      'en': 'Price per hour',
      'de': '',
      'fr': '',
    },
    'm6m9jfcy': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'evd4ox3x': {
      'en': 'Manage Schedule',
      'de': '',
      'fr': '',
    },
    '0nkajpbh': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MyPerproductPHONE
  {
    '59z74r2j': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'mgiz771h': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    '2q2ls5ji': {
      'en': 'Production Time',
      'de': '',
      'fr': '',
    },
    'w287biuv': {
      'en': 'Delivery',
      'de': '',
      'fr': '',
    },
    'lnb47dcw': {
      'en': '2-6 days',
      'de': '',
      'fr': '',
    },
    'i9psnof5': {
      'en': 'Price per product',
      'de': '',
      'fr': '',
    },
    'l2ea7zpr': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'xr9uv9qo': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    '2gi7w0qa': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    '8nxf4jcb': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MyperprogrammPHONE
  {
    '8mkvh744': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'gume7mdj': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'uhgb5jgu': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    '4rygd0ps': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'tvjifle8': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'znzhh525': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'cry9kw2u': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'qp2ax7zv': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    '0abu0eew': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'g3fifjyq': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'uab7m50q': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    '41au4dz1': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'nwbhbyv1': {
      'en': 'Price per program',
      'de': '',
      'fr': '',
    },
    'sfu0nrst': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'jpmlhjxu': {
      'en': '22 Euro',
      'de': '',
      'fr': '',
    },
    '3me5zsfq': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    '0cm1tq26': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // MyPersessionPHONE
  {
    '20bvl3ug': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'idhpa36r': {
      'en': 'Description',
      'de': '',
      'fr': '',
    },
    'xhjxw4sw': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'sit08qs5': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'gplun1f9': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'hgd3ilix': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'kshli55q': {
      'en': 'Starting time',
      'de': '',
      'fr': '',
    },
    'padisx3v': {
      'en': '10:00',
      'de': '',
      'fr': '',
    },
    'efuw82ag': {
      'en': 'Finishing time',
      'de': '',
      'fr': '',
    },
    'dp67kbgz': {
      'en': '12:00',
      'de': '',
      'fr': '',
    },
    'ok6nchpr': {
      'en': 'Weekday(s)',
      'de': '',
      'fr': '',
    },
    '3jxu1rj6': {
      'en': 'Monday/ Wednesday/ Friday',
      'de': '',
      'fr': '',
    },
    'kbp5okv9': {
      'en': 'Total number of hours',
      'de': '',
      'fr': '',
    },
    '63waiv9y': {
      'en': 'Price per session',
      'de': '',
      'fr': '',
    },
    'isqb9hoy': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'xiqcfnne': {
      'en': 'Check for availability and more',
      'de': '',
      'fr': '',
    },
    '684vvqnr': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // checkoutperhourPHONE
  {
    'i2citthm': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    '5fyzstza': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'uanl4t64': {
      'en': 'Option 1',
      'de': 'Option 1',
      'fr': 'Option 1',
    },
    'eeo8uo8p': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'qy26m2r5': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'eo36jgn5': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'p11ym0ru': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'ndbvscrr': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'bgi7di2a': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'yzefqen2': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
    '9ygk5nua': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // checkoutpersessionPHONE
  {
    'ibru4jgt': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    '7dxo54ix': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'vmx9mddr': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'byht1vfg': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'lnifdl66': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'vitw3x25': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '823g474c': {
      'en': 'StartingTime',
      'de': '',
      'fr': '',
    },
    'jjtk4ojb': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ihh0fg6t': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'smptwcf5': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '6a9jx2ls': {
      'en': 'Weekdays',
      'de': '',
      'fr': '',
    },
    'g7773wso': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'b7enqkr4': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'qi6udblu': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'nll2hrkf': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'qtiqu7fa': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'llqm05ms': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
    'fl4c9mg7': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // checkoutperprogramPHONE
  {
    '1kk78me0': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    'd8t3wthp': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    '6vwl56y3': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'oyx22jn0': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'd2tcir04': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '09uy4m1t': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'pd02pdfa': {
      'en': 'Starting Time',
      'de': '',
      'fr': '',
    },
    'cw227end': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'laxzjn8b': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '8ilkses5': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'evwhtenj': {
      'en': 'Weekdays',
      'de': '',
      'fr': '',
    },
    '17utjlmb': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ejlr5obo': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'mmrmkdq0': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'nhs5uf6w': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'rv2ptpvu': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    '371gufzk': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
    'oo34503g': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // checkoutperproductPHONE
  {
    'annkglm8': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    'n4iy2onm': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'jp49rc8z': {
      'en': 'Delivery Type',
      'de': '',
      'fr': '',
    },
    'bazy12zs': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'ja37cwd9': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'v4luc62k': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'r9ozy7wx': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'e70kcq32': {
      'en': ' Euro',
      'de': '',
      'fr': '',
    },
    'hhjbvle2': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
    'lq7jwu4l': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // P1createpromoteaccount
  {
    'g1xd32wl': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'cnh3sh71': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '29zl8bpa': {
      'en': 'Contact Details',
      'de': '',
      'fr': '',
    },
    'g7g42h5a': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'exxs5ht0': {
      'en': 'Payment',
      'de': '',
      'fr': '',
    },
    'inu6bopx': {
      'en': 'Registration Number of the Company',
      'de': '',
      'fr': '',
    },
    'cidik4kg': {
      'en': 'Category',
      'de': '',
      'fr': '',
    },
    'j1kt30kd': {
      'en': 'Description of your Company',
      'de': '',
      'fr': '',
    },
    'oydtotd4': {
      'en': 'Tell us something about your company',
      'de': '',
      'fr': '',
    },
    'isjen85c': {
      'en': 'Number...',
      'de': '',
      'fr': '',
    },
    '0nupe2bh': {
      'en': 'Select...',
      'de': '',
      'fr': '',
    },
    'pb39eyes': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'epxruwb3': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'oh8pracr': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'xuxyf4jl': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'h4tcsfkk': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'l55iisl9': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'q9pohwj2': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'u5vblwtw': {
      'en': 'Description...',
      'de': '',
      'fr': '',
    },
    'kxy92lrp': {
      'en': 'About you...',
      'de': '',
      'fr': '',
    },
    '1fxwbgw0': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // P2createpromoteaccount
  {
    '668cypi4': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'n8pmpj6z': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'cvaeuisn': {
      'en': 'Contact Details',
      'de': '',
      'fr': '',
    },
    '2qlrsitt': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'btv40ubn': {
      'en': 'Payment',
      'de': '',
      'fr': '',
    },
    '9t29i0s7': {
      'en': '1. Choose a main picture',
      'de': '',
      'fr': '',
    },
    'nxtgzoj4': {
      'en': '2. Choose a background picture',
      'de': '',
      'fr': '',
    },
    'l7iqzy2l': {
      'en': '3. Upload more pictures',
      'de': '',
      'fr': '',
    },
    'wjqixo3w': {
      'en':
          '( any type of certification would be effective for your provided service to be accepted by MH)',
      'de': '',
      'fr': '',
    },
    'bunbxuw9': {
      'en': 'Add Photos',
      'de': '',
      'fr': '',
    },
    'pa2466xz': {
      'en': '4. Upload a video',
      'de': '',
      'fr': '',
    },
    'm6en94z5': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // p4createpromoteaccount
  {
    'ozcg6cck': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'jqborida': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    'iiivvc6h': {
      'en': 'Contact Details',
      'de': '',
      'fr': '',
    },
    '2t9ygqls': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'j3awa6le': {
      'en': 'Payment',
      'de': '',
      'fr': '',
    },
    'p55iz1za': {
      'en': 'User Agreement for Service Promoters on MirHunn',
      'de': '',
      'fr': '',
    },
    'ae3izbns': {
      'en':
          'Welcome to MirHunn, a platform where service promoters can create profiles to connect with users and showcase their expertise. By creating a promoter account, you agree to the following guidelines and policies. Please read them carefully.\n\n1. Account Responsibilities\nBy creating a promoter account, you agree to provide accurate, complete, and up-to-date information about yourself.\nYou are solely responsible for the content you post on your profile, including descriptions, images, and communication with users.\nYour profile must not mislead users or falsely represent your expertise or affiliations.\n2. Acceptable Use\nService promoters are expected to maintain a respectful and professional tone in all communications with users.\nProfiles must not include:\nInappropriate or offensive content.\nLinks to illegal or unethical activities.\nFalse claims or misrepresentations.\nAny violation of these rules may result in the suspension or termination of your account.\n3. Messaging and Communication\nMirHunn enables users to send messages to service promoters for informational purposes. You agree to use this feature responsibly and not for:\nSpamming users.\nSoliciting illegal activities.\nHarassment or offensive behavior.\nAll communication on the platform must comply with applicable laws and regulations.\n4. Data Protection and Privacy\nMirHunn complies with GDPR regulations. As a service promoter, you agree to:\nRespect users\' privacy and only use their data for communication within the platform.\nNot share or misuse user data in any way.\n5. Account Termination\nMirHunn reserves the right to suspend or terminate your account for:\nViolating the guidelines outlined in this agreement.\nEngaging in activities that harm the platform or its users.\n6. Disclaimer\nMirHunn is not responsible for any interactions or agreements made between service promoters and users. The platform acts solely as a medium for connection and communication.\nMirHunn does not endorse or verify the claims made by service promoters on their profiles.\n7. Amendments\nMirHunn reserves the right to modify this User Agreement at any time. Changes will be communicated, and continued use of your account implies acceptance of the revised terms.\n8. Governing Law\nThis agreement is governed by the laws of Luxembourg. Any disputes arising from this agreement will be settled in Luxembourg courts.\nWhat Documentation Is Useful?\nFor the final page of the account creation process, you could include:\n\nCommunity Guidelines: A summarized set of rules and expectations.\nPrivacy Policy: A link to MirHunn’s GDPR-compliant Privacy Policy explaining how user data is collected, stored, and protected.\nAcknowledgment Statement: A checkbox or button that states:\n\"By creating a promoter account, I confirm that I have read and agree to the User Agreement and Privacy Policy.\"\n',
      'de': '',
      'fr': '',
    },
    'bmson9a3': {
      'en': 'I accept the terms of service',
      'de': '',
      'fr': '',
    },
    'vkvclt4t': {
      'en': 'I accept privacy policy',
      'de': '',
      'fr': '',
    },
    'tznb08dv': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // p5createpromoteaccount
  {
    'wv94qc0z': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'kzr5zfgn': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '8oz2k102': {
      'en': 'Contact Details',
      'de': '',
      'fr': '',
    },
    'yqmdt83j': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    '4esirzxl': {
      'en': 'Payment',
      'de': '',
      'fr': '',
    },
    'd0xjrchh': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // p11createpromoteaccount
  {
    'qn83r9p1': {
      'en':
          'Grow your business with MirHunn! Create a professional profile to showcase your services, connect with new customers, and build your brand. Stand out in your industry and let your business shine—start promoting today!',
      'de': '',
      'fr': '',
    },
    'x2ifm28z': {
      'en': 'Start ',
      'de': '',
      'fr': '',
    },
    'h5hi9nvn': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // p3createpromoteaccount
  {
    'k41qm03q': {
      'en': 'Info',
      'de': '',
      'fr': '',
    },
    'gvjvb7u1': {
      'en': 'Gallery',
      'de': '',
      'fr': '',
    },
    '7vn6lidn': {
      'en': 'Contact Details',
      'de': '',
      'fr': '',
    },
    '2n3x5xqm': {
      'en': 'Terms',
      'de': '',
      'fr': '',
    },
    'w36saigi': {
      'en': 'Payment',
      'de': '',
      'fr': '',
    },
    'okwodxpz': {
      'en': 'Email Address',
      'de': '',
      'fr': '',
    },
    'rrlrf83d': {
      'en': 'Registration Number of the Company',
      'de': '',
      'fr': '',
    },
    'nwkqemsf': {
      'en': 'Phone Number',
      'de': '',
      'fr': '',
    },
    'em8zxfpl': {
      'en': 'Copy & Paste the Url of your Instagram Profile\n',
      'de': '',
      'fr': '',
    },
    'qan8fq6t': {
      'en': 'Copy & Paste the Url of your Facebook Profile',
      'de': '',
      'fr': '',
    },
    '4cmgwak8': {
      'en': 'Copy & Paste the Url of your LinkedIn Profile',
      'de': '',
      'fr': '',
    },
    'm1ynrzob': {
      'en': 'Copy & Paste the Url of your Website',
      'de': '',
      'fr': '',
    },
    'ejxifnfq': {
      'en': 'Hello World',
      'de': '',
      'fr': '',
    },
    'dk0h031r': {
      'en': 'Mail...',
      'de': '',
      'fr': '',
    },
    'b5zwqsm1': {
      'en': 'Number...',
      'de': '',
      'fr': '',
    },
    'yam53smu': {
      'en': 'Paste the URL here...',
      'de': '',
      'fr': '',
    },
    '9k4g3di9': {
      'en': 'Paste the URL here...',
      'de': '',
      'fr': '',
    },
    'wc8yqtr8': {
      'en': 'Paste the URL here...',
      'de': '',
      'fr': '',
    },
    'l5hddlue': {
      'en': 'Paste the URL here...',
      'de': '',
      'fr': '',
    },
    'mpxskpzv': {
      'en': 'Home',
      'de': '',
      'fr': '',
    },
  },
  // confirmbooking
  {
    '5ladusop': {
      'en': 'Confirm Booking',
      'de': '',
      'fr': 'Bestätigen Sie die Buchung',
    },
    'rkk089mj': {
      'en': 'Confirm Booking',
      'de': '',
      'fr': '',
    },
  },
  // ProfileCirclePopUp
  {
    '2gnosop6': {
      'en': 'My Profile',
      'de': '',
      'fr': '',
    },
    'gvo11ifv': {
      'en': 'Edit My Profile',
      'de': '',
      'fr': '',
    },
    '4rfxuzee': {
      'en': 'Enable Payments',
      'de': '',
      'fr': '',
    },
    '242838ul': {
      'en': 'Finish \"Enable Payments\"',
      'de': '',
      'fr': '',
    },
    'crh1ym0j': {
      'en': 'Become a Service Provider',
      'de': '',
      'fr': '',
    },
    'baxgd5x1': {
      'en': 'Promote My Business',
      'de': '',
      'fr': '',
    },
    'a85alyuk': {
      'en': 'Edit My Service/ Pricing Template',
      'de': '',
      'fr': '',
    },
    'hy1f4zs6': {
      'en': 'See Public Demand List',
      'de': '',
      'fr': '',
    },
    'z52rkwts': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    'xefcduox': {
      'en': 'Log out',
      'de': '',
      'fr': '',
    },
    'cl4ph9l9': {
      'en': 'My Profile',
      'de': '',
      'fr': '',
    },
    'qy0ofua1': {
      'en': 'Edit My Profile',
      'de': '',
      'fr': '',
    },
    'vtfdufva': {
      'en': 'Enable Payments',
      'de': '',
      'fr': '',
    },
    '0h0vbnpp': {
      'en': 'Finish \"Enable Payments\"',
      'de': '',
      'fr': '',
    },
    'pb7bysk3': {
      'en': 'See Public Demand List',
      'de': '',
      'fr': '',
    },
    '29wtab5x': {
      'en': 'Help',
      'de': '',
      'fr': '',
    },
    '62gx7ggy': {
      'en': 'Privacy & Cookie Policy',
      'de': '',
      'fr': '',
    },
    'nw657tmy': {
      'en': 'Trust & Safety',
      'de': '',
      'fr': '',
    },
    'cycl5udf': {
      'en': 'Log out',
      'de': '',
      'fr': '',
    },
  },
  // makedemandEXPLORE
  {
    'f7okqx9y': {
      'en': 'Make your demand ',
      'de': '',
      'fr': '',
    },
    'sg9pedch': {
      'en': 'Subject',
      'de': '',
      'fr': '',
    },
    'apez70zi': {
      'en': 'Content',
      'de': '',
      'fr': '',
    },
    '2x6rpe9z': {
      'en': 'Select category',
      'de': '',
      'fr': '',
    },
    'jt7jkxlv': {
      'en': 'Search...',
      'de': '',
      'fr': '',
    },
    'z5miizm3': {
      'en': 'Gardening',
      'de': '',
      'fr': '',
    },
    '9om3xlm2': {
      'en': 'Sport',
      'de': '',
      'fr': '',
    },
    'vnzbzfb2': {
      'en': 'Education',
      'de': '',
      'fr': '',
    },
    '7i1hdg3v': {
      'en': 'Wellness',
      'de': '',
      'fr': '',
    },
    'r80y4fvz': {
      'en': 'Housekeeping',
      'de': '',
      'fr': '',
    },
    '8ycgpz5y': {
      'en': 'Babysitting',
      'de': '',
      'fr': '',
    },
    '9zmhvw7b': {
      'en': 'Technology',
      'de': '',
      'fr': '',
    },
    'yvate2nb': {
      'en': 'Art',
      'de': '',
      'fr': '',
    },
    '2dm9rhpu': {
      'en': 'Transportation & Delivery',
      'de': '',
      'fr': '',
    },
    'z03edf32': {
      'en': 'Pet Care',
      'de': '',
      'fr': '',
    },
    'k96905l1': {
      'en': 'Home Improvement & Repairs',
      'de': '',
      'fr': '',
    },
    'qid7bbnk': {
      'en': 'Business & Professional Services',
      'de': '',
      'fr': '',
    },
    'oo2mcwnb': {
      'en': 'Tourisme & Travel ',
      'de': '',
      'fr': '',
    },
    'i7ra6mnj': {
      'en': 'Events & Entertainment',
      'de': '',
      'fr': '',
    },
    'nx6lgq24': {
      'en': 'Send',
      'de': '',
      'fr': '',
    },
  },
  // clickedpricingtemplate
  {
    'kgputqn1': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    '2ztwiiuv': {
      'en': 'Per Hour Packet: ',
      'de': '',
      'fr': '',
    },
    'd2hoxjng': {
      'en': 'Option 1',
      'de': 'Option 1',
      'fr': 'Option 1',
    },
    'ygpa52x2': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'm2c254jo': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '4smvozy5': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '1iynq3ua': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'xcj04qyz': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    '0zlcyzrg': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
  },
  // clickedpricingtemplate3
  {
    't739yarc': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    '9xz4mdct': {
      'en': 'Per Program Packet: ',
      'de': '',
      'fr': '',
    },
    'prdknyi7': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'xuc8n9qj': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '3i1s4biu': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'g9d3z080': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'q9azkzco': {
      'en': 'Starting Time',
      'de': '',
      'fr': '',
    },
    'mgauu5qh': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '560ipkta': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    't08r0ur4': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '3bg2ahfz': {
      'en': 'Weekdays',
      'de': '',
      'fr': '',
    },
    '8yhbmdvu': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '2q7m3hi3': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '30lznj4a': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'b717xzs3': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'piomd4l5': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
  },
  // clickedpricingtemplate2
  {
    'mv6nue6k': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    'r3sifluy': {
      'en': 'Per Session Packet: ',
      'de': '',
      'fr': '',
    },
    'e82oe6g5': {
      'en': 'Location',
      'de': '',
      'fr': '',
    },
    'pif8w0yn': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    '30avkmfj': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'ii616ygt': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    '3zuk1jap': {
      'en': 'StartingTime',
      'de': '',
      'fr': '',
    },
    '09m21w56': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'hsywg6tp': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    '4dysonjg': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    's8761cy0': {
      'en': 'Weekdays',
      'de': '',
      'fr': '',
    },
    'pi2bgqkk': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'tz1k88yf': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    'x0vwf6c6': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'ib88jwi1': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'mpnqxcdz': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
  },
  // clickedpricingtemplate4
  {
    '8e2wg2tg': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'fr': '',
    },
    'c1pxzai5': {
      'en': 'Per Product Packet: ',
      'de': '',
      'fr': '',
    },
    'a0capq59': {
      'en': 'Delivery Type',
      'de': '',
      'fr': '',
    },
    'gwy200ph': {
      'en': 'Option 1',
      'de': '',
      'fr': '',
    },
    'y6qvd933': {
      'en': 'Option 2',
      'de': '',
      'fr': '',
    },
    's8vfszba': {
      'en': 'Option 3',
      'de': '',
      'fr': '',
    },
    'nkpz646f': {
      'en': 'Total',
      'de': '',
      'fr': '',
    },
    'cdbtf4nb': {
      'en': 'Checkout',
      'de': '',
      'fr': '',
    },
  },
  // commentsection
  {
    '3h3vyqvk': {
      'en': '\'s Comment Section',
      'de': '',
      'fr': '',
    },
    '93g98nxs': {
      'en': 'Create Note',
      'de': '',
      'fr': '',
    },
    'no58l4td': {
      'en': 'TextField',
      'de': '',
      'fr': '',
    },
  },
  // writerating
  {
    'd1q19cbn': {
      'en': 'TextField',
      'de': '',
      'fr': '',
    },
    'sy3ql9q4': {
      'en': 'Rate',
      'de': '',
      'fr': '',
    },
  },
  // reviews
  {
    'zwplkn7g': {
      'en': 'Vacation Home',
      'de': '',
      'fr': '',
    },
    'vnatzjud': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'de': '',
      'fr': '',
    },
    'wn5ikzcf': {
      'en': 'Vacation Home',
      'de': '',
      'fr': '',
    },
    'jbjqjax1': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'de': '',
      'fr': '',
    },
    '9xwscnep': {
      'en': 'Vacation Home',
      'de': '',
      'fr': '',
    },
    'naz09ng0': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'de': '',
      'fr': '',
    },
  },
  // DirectContactInfomirhunncom
  {
    '64romwn1': {
      'en': 'Contact info@mirhunn.com',
      'de': '',
      'fr': '',
    },
    'rplgzj6d': {
      'en': 'Please let us knowhow we can help you.',
      'de': '',
      'fr': '',
    },
    '7xdr46o2': {
      'en': 'Subject',
      'de': '',
      'fr': '',
    },
    '7oqu5aq2': {
      'en': 'Leave note here...',
      'de': '',
      'fr': '',
    },
    'vzlx5lye': {
      'en': 'Send',
      'de': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    'dzcrnc2e': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'fmudhw7m': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'pmvnxo1l': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'soqwcjbn': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'vq3x0i1k': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '5zd6yjax': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'w5xgxw4h': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'd2ic06cg': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'hq0ays90': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'n7inl1qc': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '299ee0i6': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '9mx9f1k1': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '7v1gv622': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '4594jwxm': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'uflc2wel': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '2jb8j8uu': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '21jad871': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '31m8kp9l': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'iyegkut7': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'pb5x9cd9': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'zw3qxvsf': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'f9tie276': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'hvn5ax1m': {
      'en': '',
      'de': '',
      'fr': '',
    },
    'o0pwcrdj': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '1cayel4f': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '5n157in6': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '115k4huz': {
      'en': '',
      'de': '',
      'fr': '',
    },
    '3h1sg2dz': {
      'en': '',
      'de': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
