import '../base/constant/constants.dart';

extension IntegerExtension on int? {
  int orZero() {
    if (this == null) {
      return zero;
    } else {
      return this!;
    }
  }
}
