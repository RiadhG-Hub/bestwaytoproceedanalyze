/// Represents different levels of danger based on a score range.
enum DangerClass {
  /// 90-100: Very Safe
  verySafe,

  /// 80-89: Safe
  safe,

  /// 70-79: Generally Safe
  generallySafe,

  /// 60-69: Moderately Safe
  moderatelySafe,

  /// 50-59: Somewhat Safe
  somewhatSafe,

  /// 40-49: Moderately Unsafe
  moderatelyUnsafe,

  /// 30-39: Unsafe
  unsafe,

  /// 20-29: Very Unsafe
  veryUnsafe,

  /// 10-19: Extremely Unsafe
  extremelyUnsafe,

  /// 0-9: Extremely Hazardous
  extremelyHazardous
}

/// Extension on the int type to map an integer score to a [DangerClass].
extension IntDangerClassExtension on int {
  /// Maps an integer score to a [DangerClass] based on predefined ranges.
  ///
  /// Throws a [RangeError] if the value is not within the range of 0 to 100.
  DangerClass get dangerClass {
    if (this >= 90 && this <= 100) {
      return DangerClass.verySafe;
    } else if (this >= 80 && this < 90) {
      return DangerClass.safe;
    } else if (this >= 70 && this < 80) {
      return DangerClass.generallySafe;
    } else if (this >= 60 && this < 70) {
      return DangerClass.moderatelySafe;
    } else if (this >= 50 && this < 60) {
      return DangerClass.somewhatSafe;
    } else if (this >= 40 && this < 50) {
      return DangerClass.moderatelyUnsafe;
    } else if (this >= 30 && this < 40) {
      return DangerClass.unsafe;
    } else if (this >= 20 && this < 30) {
      return DangerClass.veryUnsafe;
    } else if (this >= 10 && this < 20) {
      return DangerClass.extremelyUnsafe;
    } else if (this >= 0 && this < 10) {
      return DangerClass.extremelyHazardous;
    } else {
      throw RangeError('Value not in valid range for DangerClass');
    }
  }
}
