// Copyright ©2013 The Flutter Authors
// BSD 3-Clause License
// All rights reserved

// part '_languages.dart';
part '_language_constants.dart';

/// *Code in this file was forked from the dart:ui library to provide a DART
/// version of the [Language](https://api.flutter.dev/flutter/dart-ui/Language-class.html)
/// class.*
///
/// An identifier used to select a user's language and formatting preferences.
///
/// This represents a [Unicode Language
/// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
/// (i.e. without Language extensions), except variants are not supported.
///
/// Locales are canonicalized according to the "preferred value" entries in the
/// [IANA Language Subtag
/// Registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry).
/// For example, `const Language('he')` and `const Language('iw')` are equal and
/// both have the [languageCode] `he`, because `iw` is a deprecated language
/// subtag that was replaced by the subtag `he`.
class Language {
  /// Creates a new [Language] object. The first argument is the
  /// primary language subtag, the second is the region (also
  /// referred to as 'country') subtag.
  ///
  /// For example:
  ///
  /// ```dart
  /// const Language swissFrench = Language('fr', 'CH');
  /// const Language canadianFrench = Language('fr', 'CA');
  /// ```
  ///
  /// The primary language subtag must not be null. The region subtag is
  /// optional. When there is no region/country subtag, the parameter should
  /// be omitted or passed `null` instead of an empty-string.
  ///
  /// The subtag values are _case sensitive_ and must be one of the valid
  /// subtags according to CLDR supplemental data:
  /// [language](https://github.com/unicode-org/cldr/blob/master/common/validity/language.xml),
  /// [region](https://github.com/unicode-org/cldr/blob/master/common/validity/region.xml). The
  /// primary language subtag must be at least two and at most eight lowercase
  /// letters, but not four letters. The region region subtag must be two
  /// uppercase letters or three digits. See the [Unicode Language
  /// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
  /// specification.
  ///
  /// Validity is not checked by default, but some methods may throw away
  /// invalid data.
  ///
  /// See also:
  ///
  ///  * [Language.fromSubtags], which also allows a [scriptCode] to be
  ///    specified.
  const Language(this._languageCode, [this._countryCode, this.scriptCode])
      : assert(_languageCode != '');

  /// A constant value for English, United Kingdom.
// ignore: constant_identifier_names
  static const en_GB = Language('en', 'GB');

  /// A constant value for English, United States.
// ignore: constant_identifier_names
  static const en_US = Language('en', 'US');

  /// A constant value for English.
// ignore: constant_identifier_names
  static const en = Language('en');

  /// A constant value for Arabic.
// ignore: constant_identifier_names
  static const ar = Language('ar');

  /// A constant value for Chinese.
// ignore: constant_identifier_names
  static const zh = Language('zh');

  /// A constant value for Persian.
// ignore: constant_identifier_names
  static const fa = Language('fa');

  /// A constant value for French.
// ignore: constant_identifier_names
  static const fr = Language('fr');

  /// A constant value for Georgian.
// ignore: constant_identifier_names
  static const ka = Language('ka');

  /// A constant value for German.
// ignore: constant_identifier_names
  static const de = Language('de');

  /// A constant value for Greek.
// ignore: constant_identifier_names
  static const el = Language('el');

  /// A constant value for Gujarati.
// ignore: constant_identifier_names
  static const gu = Language('gu');

  /// A constant value for Hausa.
// ignore: constant_identifier_names
  static const ha = Language('ha');

  /// A constant value for Hindi.
// ignore: constant_identifier_names
  static const hi = Language('hi');

  /// A constant value for Igbo.
// ignore: constant_identifier_names
  static const ig = Language('ig');

  /// A constant value for Indonesian.
// ignore: constant_identifier_names
  static const id = Language('id');

  /// A constant value for Xhosa.
// ignore: constant_identifier_names
  static const xh = Language('xh');

  /// A constant value for Zulu.
// ignore: constant_identifier_names
  static const zu = Language('zu');

  /// A constant value for Italian.
// ignore: constant_identifier_names
  static const it = Language('it');

  /// A constant value for Latvian.
// ignore: constant_identifier_names
  static const lv = Language('lv');

  /// A constant value for Malay.
// ignore: constant_identifier_names
  static const ms = Language('ms');

  /// A constant value for Marathi.
// ignore: constant_identifier_names
  static const mr = Language('mr');

  /// A constant value for Pedi.
// ignore: constant_identifier_names
  static const nso = Language('nso');

  /// A constant value for Portuguese.
// ignore: constant_identifier_names
  static const pt = Language('pt');

  /// A constant value for Quechua.
// ignore: constant_identifier_names
  static const qu = Language('qu');

  /// A constant value for Romanian.
// ignore: constant_identifier_names
  static const ro = Language('ro');

  /// A constant value for Russian.
// ignore: constant_identifier_names
  static const ru = Language('ru');

  /// A constant value for Tswana.
// ignore: constant_identifier_names
  static const tn = Language('tn');

  /// A constant value for Spanish.
// ignore: constant_identifier_names
  static const es = Language('es');

  /// A constant value for Swahili.
// ignore: constant_identifier_names
  static const sw = Language('sw');

  /// A constant value for Tajik.
// ignore: constant_identifier_names
  static const tg = Language('tg');

  /// A constant value for Tamil.
// ignore: constant_identifier_names
  static const ta = Language('ta');

  /// A constant value for Tatar.
// ignore: constant_identifier_names
  static const tt = Language('tt');

  /// A constant value for Telugu.
// ignore: constant_identifier_names
  static const te = Language('te');

  /// A constant value for Tok Pisin.
// ignore: constant_identifier_names
  static const tpi = Language('tpi');

  /// A constant value for Turkmen.
// ignore: constant_identifier_names
  static const tk = Language('tk');

  /// A constant value for Urdu.
// ignore: constant_identifier_names
  static const ur = Language('ur');

  /// A constant value for Yoruba.
// ignore: constant_identifier_names
  static const yo = Language('yo');

  /// A constant value for 'und'.
  /// - [languageCode] : 'und'.
  static const und = Language('und');

  /// A constant value for Spanish, Spain.
  /// - [languageCode] : 'es'.
  /// - [countryCode]  : 'ES'.
  // ignore: constant_identifier_names
  static const es_ES = Language('es', 'ES');

  /// Creates a new [Language] object by parsing [text].
  ///
  /// The [text] must be a valid language identifier with valid subtag values
  /// according to CLDR supplemental data:
  /// [language](https://github.com/unicode-org/cldr/blob/master/common/validity/language.xml),
  /// [script](https://github.com/unicode-org/cldr/blob/master/common/validity/script.xml) and
  /// [region](https://github.com/unicode-org/cldr/blob/master/common/validity/region.xml) for
  /// each of languageCode, scriptCode and countryCode respectively.
  ///
  /// The text should be in the correct format e.g. `en_US`, `de` or
  /// `ar_Arab_AE` to allow parsing of the subtags.
  ///
  /// The [languageCode] subtag is required. When there is no language subtag,
  /// the parameter should an empty String or set to "und". When not supplied,
  /// the [languageCode] defaults to "und", an undefined language code.
  ///
  /// The [countryCode] subtag is optional. When there is no country subtag,
  /// the parameter should be omitted or passed `null` instead of an
  /// empty-string.
  ///
  /// The [scriptCode] subtag is optional. When there is no script subtag,
  /// the parameter should be omitted or passed `null` instead of an
  /// empty-string.
  factory Language.parse(String text) => text.toLocale();

  /// Creates a new [Language] object.
  ///
  /// The keyword arguments specify the subtags of the Language.
  ///
  /// The subtag values are _case sensitive_ and must be valid subtags according
  /// to CLDR supplemental data:
  /// [language](https://github.com/unicode-org/cldr/blob/master/common/validity/language.xml),
  /// [script](https://github.com/unicode-org/cldr/blob/master/common/validity/script.xml) and
  /// [region](https://github.com/unicode-org/cldr/blob/master/common/validity/region.xml) for
  /// each of languageCode, scriptCode and countryCode respectively.
  ///
  /// The [languageCode] subtag is required. When there is no language subtag,
  /// the parameter should an empty String or set to "und". When not supplied,
  /// the [languageCode] defaults to "und", an undefined language code.
  ///
  /// The [countryCode] subtag is optional. When there is no country subtag,
  /// the parameter should be omitted or passed `null` instead of an
  /// empty-string.
  ///
  /// The [scriptCode] subtag is optional. When there is no script subtag,
  /// the parameter should be omitted or passed `null` instead of an
  /// empty-string.
  ///
  /// Validity can be checked by setting the [validateTags] flag. The tags will
  /// be checked against a list of valid subtags for language, country and
  /// script.
  factory Language.fromSubtags(
      {required String languageCode,
      String? scriptCode,
      String? countryCode,
      bool validateTags = false}) {
    languageCode = languageCode.isEmpty ? 'und' : languageCode.toLowerCase();
    scriptCode = (scriptCode == null || scriptCode.isEmpty) ? null : scriptCode;
    countryCode = (countryCode == null || countryCode.isEmpty)
        ? null
        : countryCode.toUpperCase();
    if (validateTags) {
      assert(_languages.keys.contains(languageCode));

      assert(scriptCode == null ||
          _scripts.keys.contains(scriptCode.toLowerCase()));
      assert(countryCode == null || _countries.keys.contains(countryCode));
      // fix any capitalization issues.
      scriptCode = _scripts[scriptCode];
    }
    return Language(languageCode, countryCode, scriptCode);
  }

  /// The primary language subtag for the locale.
  ///
  /// This must not be null. It may be 'und', representing 'undefined'.
  ///
  /// This is expected to be a string registered in the [IANA Language Subtag
  /// Registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry)
  /// with the type "language". The string specified must match the case of the
  /// string in the registry.
  ///
  /// Language subtags that are deprecated in the registry and have a preferred
  /// code are changed to their preferred code. For example, `const
  /// Language('he')` and `const Language('iw')` are equal, and both have the
  /// [languageCode] `he`, because `iw` is a deprecated language subtag that was
  /// replaced by the subtag `he`.
  ///
  /// This must be a valid Unicode Language subtag as listed in [Unicode CLDR
  /// supplemental
  /// data](https://github.com/unicode-org/cldr/blob/master/common/validity/language.xml).
  ///
  /// See also:
  ///
  ///  * [Language.fromSubtags], which describes the conventions for creating
  ///    [Language] objects.
  String get languageCode =>
      _deprecatedLanguageSubtagMap[_languageCode] ?? _languageCode;
  final String _languageCode;

  /// Returns the English common name for the language if the language code
  /// is valid.
  ///
  /// Returns [toLanguageTag] if the language code is not valid.
  String get name =>
      _languages[toLanguageTag()] ??
      _languages[languageCode] ??
      toLanguageTag();

  // This map is generated by //flutter/tools/gen_locale.dart
  // Mappings generated for language subtag registry as of 2019-02-27.
  static const Map<String, String> _deprecatedLanguageSubtagMap =
      <String, String>{
    'in': 'id', // Indonesian; deprecated 1989-01-01
    'iw': 'he', // Hebrew; deprecated 1989-01-01
    'ji': 'yi', // Yiddish; deprecated 1989-01-01
    'jw': 'jv', // Javanese; deprecated 2001-08-13
    'mo': 'ro', // Moldavian, Moldovan; deprecated 2008-11-22
    'aam': 'aas', // Aramanik; deprecated 2015-02-12
    'adp': 'dz', // Adap; deprecated 2015-02-12
    'aue': 'ktz', // ǂKxʼauǁʼein; deprecated 2015-02-12
    'ayx': 'nun', // Ayi (China); deprecated 2011-08-16
    'bgm': 'bcg', // Baga Mboteni; deprecated 2016-05-30
    'bjd': 'drl', // Bandjigali; deprecated 2012-08-12
    'ccq': 'rki', // Chaungtha; deprecated 2012-08-12
    'cjr': 'mom', // Chorotega; deprecated 2010-03-11
    'cka': 'cmr', // Khumi Awa Chin; deprecated 2012-08-12
    'cmk': 'xch', // Chimakum; deprecated 2010-03-11
    'coy': 'pij', // Coyaima; deprecated 2016-05-30
    'cqu': 'quh', // Chilean Quechua; deprecated 2016-05-30
    'drh': 'khk', // Darkhat; deprecated 2010-03-11
    'drw': 'prs', // Darwazi; deprecated 2010-03-11
    'gav': 'dev', // Gabutamon; deprecated 2010-03-11
    'gfx': 'vaj', // Mangetti Dune ǃXung; deprecated 2015-02-12
    'ggn': 'gvr', // Eastern Gurung; deprecated 2016-05-30
    'gti': 'nyc', // Gbati-ri; deprecated 2015-02-12
    'guv': 'duz', // Gey; deprecated 2016-05-30
    'hrr': 'jal', // Horuru; deprecated 2012-08-12
    'ibi': 'opa', // Ibilo; deprecated 2012-08-12
    'ilw': 'gal', // Talur; deprecated 2013-09-10
    'jeg': 'oyb', // Jeng; deprecated 2017-02-23
    'kgc': 'tdf', // Kasseng; deprecated 2016-05-30
    'kgh': 'kml', // Upper Tanudan Kalinga; deprecated 2012-08-12
    'koj': 'kwv', // Sara Dunjo; deprecated 2015-02-12
    'krm': 'bmf', // Krim; deprecated 2017-02-23
    'ktr': 'dtp', // Kota Marudu Tinagas; deprecated 2016-05-30
    'kvs': 'gdj', // Kunggara; deprecated 2016-05-30
    'kwq': 'yam', // Kwak; deprecated 2015-02-12
    'kxe': 'tvd', // Kakihum; deprecated 2015-02-12
    'kzj': 'dtp', // Coastal Kadazan; deprecated 2016-05-30
    'kzt': 'dtp', // Tambunan Dusun; deprecated 2016-05-30
    'lii': 'raq', // Lingkhim; deprecated 2015-02-12
    'lmm': 'rmx', // Lamam; deprecated 2014-02-28
    'meg': 'cir', // Mea; deprecated 2013-09-10
    'mst': 'mry', // Cataelano Mandaya; deprecated 2010-03-11
    'mwj': 'vaj', // Maligo; deprecated 2015-02-12
    'myt': 'mry', // Sangab Mandaya; deprecated 2010-03-11
    'nad': 'xny', // Nijadali; deprecated 2016-05-30
    'ncp': 'kdz', // Ndaktup; deprecated 2018-03-08
    'nnx': 'ngv', // Ngong; deprecated 2015-02-12
    'nts': 'pij', // Natagaimas; deprecated 2016-05-30
    'oun': 'vaj', // ǃOǃung; deprecated 2015-02-12
    'pcr': 'adx', // Panang; deprecated 2013-09-10
    'pmc': 'huw', // Palumata; deprecated 2016-05-30
    'pmu': 'phr', // Mirpur Panjabi; deprecated 2015-02-12
    'ppa': 'bfy', // Pao; deprecated 2016-05-30
    'ppr': 'lcq', // Piru; deprecated 2013-09-10
    'pry': 'prt', // Pray 3; deprecated 2016-05-30
    'puz': 'pub', // Purum Naga; deprecated 2014-02-28
    'sca': 'hle', // Sansu; deprecated 2012-08-12
    'skk': 'oyb', // Sok; deprecated 2017-02-23
    'tdu': 'dtp', // Tempasuk Dusun; deprecated 2016-05-30
    'thc': 'tpo', // Tai Hang Tong; deprecated 2016-05-30
    'thx': 'oyb', // The; deprecated 2015-02-12
    'tie': 'ras', // Tingal; deprecated 2011-08-16
    'tkk': 'twm', // Takpa; deprecated 2011-08-16
    'tlw': 'weo', // South Wemale; deprecated 2012-08-12
    'tmp': 'tyj', // Tai Mène; deprecated 2016-05-30
    'tne': 'kak', // Tinoc Kallahan; deprecated 2016-05-30
    'tnf': 'prs', // Tangshewi; deprecated 2010-03-11
    'tsf': 'taj', // Southwestern Tamang; deprecated 2015-02-12
    'uok': 'ema', // Uokha; deprecated 2015-02-12
    'xba': 'cax', // Kamba (Brazil); deprecated 2016-05-30
    'xia': 'acn', // Xiandao; deprecated 2013-09-10
    'xkh': 'waw', // Karahawyana; deprecated 2016-05-30
    'xsj': 'suj', // Subi; deprecated 2015-02-12
    'ybd': 'rki', // Yangbye; deprecated 2012-08-12
    'yma': 'lrr', // Yamphe; deprecated 2012-08-12
    'ymt': 'mtm', // Mator-Taygi-Karagas; deprecated 2015-02-12
    'yos': 'zom', // Yos; deprecated 2013-09-10
    'yuu': 'yug', // Yugh; deprecated 2014-02-28
  };

  /// The script subtag for the locale.
  ///
  /// This may be null, indicating that there is no specified script subtag.
  ///
  /// This must be a valid Unicode Language Identifier script subtag as listed
  /// in [Unicode CLDR supplemental
  /// data](https://github.com/unicode-org/cldr/blob/master/common/validity/script.xml).
  ///
  /// See also:
  ///
  ///  * [Language.fromSubtags], which describes the conventions for creating
  ///    [Language] objects.
  final String? scriptCode;

  /// The region subtag for the locale.
  ///
  /// This may be null, indicating that there is no specified region subtag.
  ///
  /// This is expected to be string registered in the [IANA Language Subtag
  /// Registry](https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry)
  /// with the type "region". The string specified must match the case of the
  /// string in the registry.
  ///
  /// Region subtags that are deprecated in the registry and have a preferred
  /// code are changed to their preferred code. For example, `const Language('de',
  /// 'DE')` and `const Language('de', 'DD')` are equal, and both have the
  /// [countryCode] `DE`, because `DD` is a deprecated language subtag that was
  /// replaced by the subtag `DE`.
  ///
  /// See also:
  ///
  ///  * [Language.fromSubtags], which describes the conventions for creating
  ///    [Language] objects.
  String? get countryCode =>
      _deprecatedRegionSubtagMap[_countryCode] ?? _countryCode;
  final String? _countryCode;

  // This map is generated by //flutter/tools/gen_locale.dart
  // Mappings generated for language subtag registry as of 2019-02-27.
  static const Map<String, String> _deprecatedRegionSubtagMap =
      <String, String>{
    'BU': 'MM', // Burma; deprecated 1989-12-05
    'DD': 'DE', // German Democratic Republic; deprecated 1990-10-30
    'FX': 'FR', // Metropolitan France; deprecated 1997-07-14
    'TP': 'TL', // East Timor; deprecated 2002-05-20
    'YD': 'YE', // Democratic Yemen; deprecated 1990-08-14
    'ZR': 'CD', // Zaire; deprecated 1997-07-14
  };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Language) {
      return false;
    }
    final String? countryCode = _countryCode;
    final String? otherCountryCode = other.countryCode;
    return other.languageCode == languageCode &&
        other.scriptCode == scriptCode // scriptCode cannot be ''
        &&
        (other.countryCode == countryCode // Treat '' as equal to null.
            ||
            otherCountryCode != null &&
                otherCountryCode.isEmpty &&
                countryCode == null ||
            countryCode != null &&
                countryCode.isEmpty &&
                other.countryCode == null);
  }

  @override
  int get hashCode => Object.hash(
      languageCode, scriptCode, countryCode == '' ? null : countryCode);

  static Language? _cachedLocale;
  static String? _cachedLocaleString;

  /// Returns a string representing the locale.
  ///
  /// This identifier happens to be a valid Unicode Language Identifier using
  /// underscores as separator, however it is intended to be used for debugging
  /// purposes only. For parsable results, use [toLanguageTag] instead.
  @override
  String toString() {
    if (!identical(_cachedLocale, this)) {
      _cachedLocale = this;
      _cachedLocaleString = _rawToString('_');
    }
    return _cachedLocaleString!;
  }

  /// Returns a syntactically valid Unicode BCP47 Language Identifier.
  ///
  /// Some examples of such identifiers: "en", "es-419", "hi-Deva-IN" and
  /// "zh-Hans-CN". See http://www.unicode.org/reports/tr35/ for technical
  /// details.
  String toLanguageTag() => _rawToString('-');

  String _rawToString(String separator) {
    final StringBuffer out = StringBuffer(languageCode);
    if (scriptCode != null && scriptCode!.isNotEmpty) {
      out.write('$separator$scriptCode');
    }
    if (_countryCode != null && _countryCode!.isNotEmpty) {
      out.write('$separator$countryCode');
    }
    return out.toString();
  }
}

/// Extension method on String to parse a fully formed [Unicode Language
/// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
/// to a [Language] object.
extension LanguageStringExtensions on String {
  /// Parses the text to [Language].  The input text must, at a minimum be
  /// a valid language tag string (e.g. 'us'), or a fully qualified
  /// string representation of a [Language].
  Language toLocale() => Language.fromSubtags(
      languageCode: languageSubTag,
      countryCode: countrySubTag,
      scriptCode: scriptSubTag,
      validateTags: false);
}

/// Extension methods on String to parse a [Unicode Language
/// Identifier](https://www.unicode.org/reports/tr35/#Unicode_language_identifier)
/// to a its subtags.
extension LanguageTagStringExtensions on String {
//

  /// Replaces all sequences of dashes, em-dashes and underscores with a single
  /// dash, then strips out all characters other than letters and dashes.
  String normalizeLanguageIdentifier() =>
      // replace all em-dashes and underscores with dash
      replaceAll(RegExp(r'[\-—_]+'), '-')
          // strip out all characters other than letters and dashes
          .replaceAll(RegExp(r'[^a-zA-Z-]'), '');

  /// Parses the String to [subTags] and then returns the language subTag if it
  /// exists.
  ///
  /// Returns 'und' if the language tag is not valid.
  String get languageSubTag {
    final language = subTags.first.toLowerCase();
    return (_languages.keys.contains(language)) ? language : 'und';
  }

  /// Parses the String to [subTags] and returns the country subTag if it
  /// exists.
  ///
  /// Returns null if the parsed tag is not in the list of valid country tags.
  String? get countrySubTag {
    final locale = normalizeLanguageIdentifier();
    String? country;
    if (locale.contains('-')) {
      final tags = subTags;
      if (tags.length > 1) {
        country = tags.last.toUpperCase();
      }
    }
    return _countries.keys.contains(country) ? country : null;
  }

  /// Splits the string into sub tags at hyphens, em-dashes and/or underscores.
  ///
  /// Treats multiple delimiters as a single delimiter.
  List<String> get subTags => normalizeLanguageIdentifier().split('-');

  /// Parses the String to [subTags] and then returns the script subTag if it
  /// exists.
  ///
  /// Returns null if the parsed tag is not in the list of valid script tags.
  String? get scriptSubTag {
    final terms = subTags;
    return (terms.length == 3) ? _scripts[terms[1].toLowerCase()] : null;
  }
}
