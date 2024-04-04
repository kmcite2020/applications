extension DurationExtensions on Duration {
  String get formatDuration {
    if ((inDays / 30) > 12) {
      return '${(inDays / 30 / 12).ceil()} years';
    } else if (inDays >= 100) {
      return '${(inDays / 30).ceil()} months';
    } else if (inDays >= 30 && inDays <= 100) {
      return '$inDays days';
    } else if (inHours >= 24) {
      return '$inHours hours';
    } else if (inMinutes >= 60) {
      return '$inMinutes minutes';
    } else {
      return '$inSeconds seconds';
    }
  }
}
