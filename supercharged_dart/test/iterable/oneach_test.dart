import 'package:supercharged_dart/supercharged_dart.dart';
import 'package:test/test.dart';

void main() {
  test('iterable onEach', () {
    var onEachNumber = 0;
    var sum = [1, 2, 3].onEach((n) => onEachNumber += n).sum();
    expect(sum, equals(6));
    expect(onEachNumber, equals(6));
  });

  test('iterable onEachIndexed', () {
    var onEachNumber = 0;
    var sum =
        [1, 2, 3].onEachIndexed((n, index) => onEachNumber += n + index).sum();
    expect(sum, equals(6));
    expect(onEachNumber, equals(9));
  });
}