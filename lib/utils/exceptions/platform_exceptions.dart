class MPlatformException implements Exception {
  final String code;
  final String message;

  MPlatformException(this.code, [this.message = "A Platform error occurred"]);

  @override
  String toString() => 'WPlatformException: $code - $message';
}