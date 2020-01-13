library ms_range;

import 'dart:math' as math;

/// A Range class
class Range {
  final num start;
  final num end;
  final num step;

  /// [start] number that start a range
  /// [end] number that end a range
  Range(num start, num end, [num step = 1])
      : start = math.min(start, end),
        end = math.max(start, end),
        step = step;

  /// return true if [numToTest] is major or equal [start] or minor or equal [end]
  bool isInRange(num numToTest) =>
      numToTest >= start && numToTest <= end;

  /// return true if [numToTest] is major [start] or minor [end]
  bool isBetween(num numToTest) =>
      numToTest > start && numToTest < end;

  /// return a Interable for range [start]..[end]
  Iterable<num> get interate sync* {
    num mStart = start;
    while (mStart <= end) {
      yield mStart;
      mStart += step;
    }
  }

  /// return a list content [start]..[end]
  List<num> get list => interate.toList();

  /// check if other number is in range
  // ignore: hash_and_equals
  @override
  bool operator ==(Object other) {
    if (other is num) return isInRange(other);
    if (other is Range) {
      return other.start == start && other.end == end;
    }
    return false;
  }

  /// check if other number is major that range
  bool operator >(Object other) {
    if (other is num) return (other) > end;
    if (other is Range) return other.end > end;
    return false;
  }

  /// check if other number is minor that range
  bool operator <(Object other) {
    if (other is num) return other < start;
    if (other is Range) return other.start > start;
    return false;
  }
}
