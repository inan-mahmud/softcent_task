import '../base/constant/constants.dart';

extension StringExtension on String? {
  String orEmpty() {
    if (this == null) {
      return empty;
    } else {
      return this!;
    }
  }
}
