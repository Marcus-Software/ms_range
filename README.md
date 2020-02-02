[![Pub](https://img.shields.io/pub/v/ms_range.svg)](https://pub.dartlang.org/packages/ms_range)

# Overview

A powerfull lib to creante and compare a number in ranges

## Whats MS_Range do?

Generate a range of two numbers and providers methods to check if a number is in this range.

## Usage

Create a new Range instance:
```dart
import 'package:ms_range/ms_range.dart';

Range range = Range(1, 6);
```

Call some methods of range to do hard work:
```dart
range.isInRange(2); // true
range.list; // [1, 2, 3, 4, 5, 6]
```
