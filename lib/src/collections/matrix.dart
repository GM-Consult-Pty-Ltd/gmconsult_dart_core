// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

import 'array.dart';

/// An N-dimensional, non-growable, matrix with [dimensions] with corresponding
/// [bases].
class Matrix<T extends Object> {
  //

  /// The base index of each matrix dimension
  final List<int> bases;

  /// The number of dimensions in the matrix.
  int get dimensions => bases.length;

  /// Const default generative constructor
  const Matrix(this.elements, this.bases);

  /// Unnamed factory constructor initializes an empty [Matrix].
  factory Matrix.empty(List<int> bases, T fillValue, List<int> lengths) {
    return Matrix(_getElements(bases, fillValue, lengths), bases);
  }

  /// Recursively builds the [Matrix] from
  static Array _getElements<T extends Object>(
      List<int> bases, T fillValue, List<int> lengths,
      [int? dimension]) {
    dimension = dimension ?? bases.length - 1;
    final length = lengths[dimension];
    final base = bases[dimension];
    if (dimension == 0) {
      return Array.empty(fillValue, length, base);
    } else {
      final retVal = <Array>[];
      for (var i = 0; i < length; i++) {
        retVal.add(_getElements(
          bases,
          fillValue,
          lengths,
          dimension - 1,
        ));
      }
      return Array(retVal, base);
    }
  }

  /// Returns the elements of the matrix as an [Array] of [Array] objects.
  final Array elements;

  /// Returns the value at position [coordinates].
  T get(List<int> coordinates) {
    assert(bases.length > 1 && coordinates.length == bases.length);
    T? retVal;
    Array array = elements.get(coordinates.last) as Array;
    for (var i = coordinates.length - 2; i >= 0; i--) {
      final coord = coordinates[i];
      if (i == 0) {
        retVal = array.get(coord) as T;
      } else {
        array = array.get(coord) as Array;
      }
    }
    if (retVal != null) return retVal;
    throw ('No element at position $coordinates');
  }

  /// Sets the [value] at [coordinates].
  void setAt(List<int> coordinates, T value) {
    Array array = elements.get(coordinates.last) as Array;
    for (var i = coordinates.length - 2; i >= 0; i--) {
      final coord = coordinates[i];
      if (i == 0) {
        array.setAt(coord, value);
      } else {
        array = array.get(coord) as Array;
      }
    }
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('[');
    for (var i = 0; i < elements.length; i++) {
      // buffer.write('${i + base}: ');
      buffer.write(elements.elements[i].toString());
      buffer.write(i < elements.length - 1 ? ', ' : '');
    }
    buffer.write(']');
    return buffer.toString();
  }

//
}
