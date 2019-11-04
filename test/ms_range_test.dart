import 'package:test/test.dart';
import 'package:ms_range/ms_range.dart';

void main() {
  test('create a list [1, 2, 3, 4, 5]', () {
    final range = Range(1, 5);
    expect(range.list, [1, 2, 3, 4, 5]);
  });

  test('check if number 201 is in range 200..299', () {
    final range = Range(200, 299);
    expect(range.isBetween(201), isTrue);
    // ignore: unrelated_type_equality_checks
    expect(range == 201, isTrue);
  });

  test('check if number 100 is minor that range 200..299', () {
    final range = Range(200, 299);
    expect(range.isBetween(201), isTrue);
    // ignore: unrelated_type_equality_checks
    expect(range < 100, isTrue);
  });

  test('check if number 300 is major that range 200..299', () {
    final range = Range(200, 299);
    expect(range.isBetween(201), isTrue);
    // ignore: unrelated_type_equality_checks
    expect(range > 300, isTrue);
  });

  test('check if number 250 is major that range 200..299', () {
    final range = Range(200, 299);
    expect(range.isBetween(201), isTrue);
    // ignore: unrelated_type_equality_checks
    expect(range > 250, isFalse);
  });

  test('generate a list with steps [2, 4, 6, 8]', () {
    final range = Range(2, 8, 2);
    expect(range.list, [2, 4, 6, 8]);
  });

  test('generate a list with steps [1, 1.5, 2, 2.5, 3]', () {
    final range = Range(1, 3, 0.5);
    expect(range.list, [1, 1.5, 2, 2.5, 3]);
  });
}
