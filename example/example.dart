// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

// ignore_for_file: unused_import, unused_local_variable
// Import the core libraries
import 'package:gmconsult_dart_core/dart_core.dart';

// Import the type definitions
import 'package:gmconsult_dart_core/type_definitions.dart';

// Import the dev utilities
import 'package:gmconsult_dev/gmconsult_dev.dart';

/// Example code
void main() async {
  //

// initialize a 1-based array.
  final array = Array.empty(-1, 10, 1);
  // populate the array
  for (var i = 1; i <= array.length; i++) {
    array.setAt(i, i * 100);
  }

  // read the value at (1-based) position 10
  final arrayValue = array.get(10);

  // initialize a 1-based 3-dimensional matrix
  final matrix = Matrix.empty([1, 1, 1], -1, [3, 3, 3]);

  // set a value of 9 at coordinates [2, 1, 1]
  matrix.setAt([2, 1, 1], 9);

  // read the same value
  final matrixValue = matrix.get([2, 1, 1]);

  // parse a language tag and print the results
  final language = Language.parse('ar_Arab_AE');
  print('Language tag:    ${language.toLanguageTag()}');
  print('Name:            ${language.name}');
// prints:
//    Language tag:    ar-Arab-AE
//    Name:          Arabic - Arabic - (United Arab Emirates)

  // Get some JSON data from a public API endpoint
  final json = await JsonApi().get(
      host: 'boredapi.com',
      path: 'api/activity',
      queryParameters: {'key': '5881028'},
      isHttps: true);

  _seperator();

  // Get some JSON from [JsonApi.get].
  await _getHttp();

  _seperator();
}

/// Get some JSON from [JsonApi.get].
Future<void> _getHttp() async {
//
  // print a heading
  print('Get JSON from [JsonApi.get]');

  // Get some JSON data from a public API endpoint
  final json = await JsonApi().get(
      host: 'boredapi.com',
      path: 'api/activity',
      queryParameters: {'key': '5881028'},
      isHttps: true);

  // print the results
  print('Request URL:        ${json['_%url']}');
  print('Response code:      ${json['_%status']}');
  print('Activity:           ${json['activity']}');

// prints to the console:
//    Request URL:        https://boredapi.com/api/activity?key=5881028
//    Response code:      200
//    Activity:           Learn a new programming language

  Activity? activity = await Bored.type(ActivityType.busywork);
  if (activity != null) {
    Console.out(title: activity.activity, results: [activity.toJson()]);
  }
  activity = await Bored.random;
  if (activity != null) {
    Console.out(title: activity.activity, results: [activity.toJson()]);
  }

//
}

/// Print a separator
void _seperator([int width = 80, String char = '—']) {
  print(''.padRight(width, char));
}

// Copyright ©2022, GM Consult (Pty) Ltd
// BSD 3-Clause License
// All rights reserved

/// A simple implementation of [ApiEndpoint].
class Bored extends ApiEndpointBase<Activity> {
//

  /// Initialize the endpoint with the [id].
  const Bored._(this.queryParameters);

  static Map<String, String>? getQueryParameters(
      {int? id,
      ActivityType? type,
      int? participants,
      double? minPrice,
      double? maxPrice,
      double? minAccessibility,
      double? maxAccessibility}) {
    final queryParams = <String, String>{};
    if (id != null) {
      {
        queryParams['key'] = id.toString();
      }
    }
    if (type != null) {
      {
        queryParams['type'] = type.name;
      }
    }
    if (minPrice != null) {
      {
        queryParams['minprice'] = minPrice.toString();
      }
    }
    if (maxPrice != null) {
      {
        queryParams['maxprice'] = maxPrice.toString();
      }
    }
    if (participants != null) {
      {
        queryParams['participants'] = participants.toString();
      }
    }
    if (minAccessibility != null) {
      {
        queryParams['minaccessibility'] = minAccessibility.toString();
      }
    }
    if (id != null) {
      {
        queryParams['maxaccessibility'] = maxAccessibility.toString();
      }
    }
    return queryParams.isEmpty ? null : queryParams;
  }

  static Future<Activity?> get random => Bored._(null).get();

  static Future<Activity?> type(ActivityType type) =>
      Bored._(getQueryParameters(type: type)).get();

  /// Factory that builds the query params
  factory Bored(
          {int? id,
          ActivityType? type,
          int? participants,
          double? minPrice,
          double? maxPrice,
          double? minAccessibility,
          double? maxAccessibility}) =>
      Bored._(getQueryParameters(
          id: id,
          type: type,
          participants: participants,
          minPrice: minPrice,
          maxPrice: maxPrice,
          minAccessibility: minAccessibility,
          maxAccessibility: maxAccessibility));

  @override
  JsonDeserializer<Activity> get deserializer => Activity.fromJson;

  @override
  String get host => 'www.boredapi.com';

  @override
  String get path => 'api/activity';

  @override
  HttpProtocol get protocol => HttpProtocol.https;

  @override
  final Map<String, String>? queryParameters;

  @override
  JsonSerializer<Activity> get serializer => (obj) => obj.toJson();

  @override
  Map<String, String>? get headers => null;
}

/// Simple object model for testing
class Activity {
//

  /// The deserializer rquired by the [ApiEndpoint].
  static Activity fromJson(JSON json) {
    final activity = json['activity'];
    final key = json['key'];
    final type = json['type'];
    final link = json['link'];
    final participants = json['participants'];
    final price = json['price'];
    final accessibility = json['accessibility'];
    if (activity is String &&
        key is String &&
        type is String &&
        link is String &&
        participants is num &&
        price is num &&
        accessibility is num) {
      return Activity(int.parse(key), type.toActivityType(), activity, link,
          participants.toInt(), price.toDouble(), accessibility.toDouble());
    }
    throw ('The json is not a valid Bored object');
  }

  /// The serializer required by the [ApiEndpoint].
  JSON toJson() => {
        'key': key.toString(),
        'type': type.name,
        'activity': activity,
        'link': link,
        'participants': participants.toString(),
        'price': price.toStringAsFixed(2),
        'accesibility': accessibility.toStringAsFixed(2)
      };

  /// Object property,
  final int key;

  /// Object property,
  final ActivityType type;

  /// Object property,
  final String activity;

  /// Object property,
  final String link;

  /// Object property,
  final int participants;

  /// Object property,
  final double price;

  /// Object property,
  final double accessibility;

  /// Const default generative constructor.
  const Activity(this.key, this.type, this.activity, this.link,
      this.participants, this.price, this.accessibility);
}

extension _ActivityTypeExtension on String {
  //

  /// Parses a String to [ActivityType]
  ActivityType toActivityType() {
    final retVal = ActivityType.values
        .where((element) => element.toString() == this || element.name == this);
    if (retVal.isNotEmpty) {
      return retVal.first;
    }
    throw ('Not a valid ActivityType');
  }
}

/// Enumeration of [Activity.type]
enum ActivityType {
  education,
  recreational,
  social,
  diy,
  charity,
  cooking,
  relaxation,
  music,
  busywork
}

ActivityType activityTypeFromString(String value) => value.toActivityType();

const sampleData = {
  'activity': 'Learn a new programming language',
  'type': 'education',
  'participants': 1,
  'price': 0.1,
  'link': '',
  'key': '5881028',
  'accessibility': 0.25
};
