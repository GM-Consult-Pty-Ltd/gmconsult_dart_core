// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

/// A [base]-based, non-growable, 1-dimensional array of [T].
class Array<T extends Object> {
  //

  /// The index of the first element of the array.
  final int base;

  /// Returns the number of elements in the array.
  int get length => elements.length;

  /// The elements of the array as a zero-based ordered collection of [T].
  final List<T> elements;

  /// Instantiate a [base]-based [Array] from the [elements].
  const Array(this.elements, [this.base = 0]);

  /// Creates an empty array
  factory Array.empty(T fillValue, int length, [int base = 0]) {
    return Array(List<T>.filled(length, fillValue), base);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('[');
    for (var i = 0; i < elements.length; i++) {
      if (elements[i] is String) {
        final value = elements[i].toString().replaceAll("'", r"\'");
        buffer.write("'$value'");
      } else {
        buffer.write(elements[i].toString());
      }
      buffer.write(i < elements.length - 1 ? ', ' : '');
    }
    buffer.write(']');
    return buffer.toString();
  }

  /// Returns the array value at [index].
  T get(int index) => elements[index - base];

  /// Sets the array [value] at [index].
  ///
  /// Asserts that [index] is valid.
  void setAt(int index, T value) {
    assert(index < length + base);
    elements[index - base] = value;
  }
}
