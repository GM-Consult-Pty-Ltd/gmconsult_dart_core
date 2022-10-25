// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

// ignore_for_file: unused_import

import 'package:gmconsult_dart_core/dart_core.dart';
import 'package:test/test.dart';
import 'package:gmconsult_dev/gmconsult_dev.dart';
import '../example/example.dart';

void main() {
  group('collections', (() {
    test('Array', (() {
      // create a 1-based array.
      final array = Array.empty(-1, 10, 1);
      for (var i = 1; i <= array.length; i++) {
        array.setAt(i, i * 100);
      }
      print(array.get(10));
      array.setAt(1, 1);
      print(array.get(1));
      print(array.toString());
    }));

    test('Matrix.empty', (() {
      final bases = [1, 1, 1];
      final lengths = [3, 3, 3];
      final fillValue = -1;
      final matrix = Matrix.empty(bases, fillValue, lengths);
      print(matrix.toString());
      var value = 1;
      for (var z = bases[2]; z < lengths[2] + bases[2]; z++) {
        for (var y = bases[1]; y < lengths[1] + bases[1]; y++) {
          for (var x = bases[0]; x < lengths[0] + bases[0]; x++) {
            matrix.setAt([x, y, z], value);
            value += 1;
            print(matrix.toString());
          }
        }
      }
      print(matrix.toString());
      print(matrix.get([2, 1, 1]));
      matrix.setAt([2, 1, 1], 9);
      print(matrix.get([2, 1, 1]));
      print(matrix.toString());
    }));

    //
  }));

  group('Language', (() {
    //

    test('Language.parse', (() async {
      final language = Language.parse('ar_arab_aE');
      print('Language tag:    ${language.toLanguageTag()}');
      print('Name:            ${language.name}');
    }));

    //
  }));
  group('JsonApi', (() {
    //

    test('JsonApi.get', (() async {
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
    }));

    test('ApiEndpoint', (() async {
      Activity? activity = await Bored.type(ActivityType.busywork);
      if (activity != null) {
        Console.out(title: activity.activity, results: [activity.toJson()]);
      }
      activity = await Bored.random;
      if (activity != null) {
        Console.out(title: activity.activity, results: [activity.toJson()]);
      }
    }));

    //
  }));
}
