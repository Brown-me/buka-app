class MFormatException implements Exception {
  final String message;

  const MFormatException([this.message = "An Unexpected format error occurred, Please check your input."]);

    factory MFormatException.fromMessage(String message){
      return MFormatException(message);
    }

    String get formattedMessage => message;

  factory MFormatException.fromCode(String code){
    switch(code){
      case 'invalid-email-format':
        return const MFormatException('The Email Address format is Invalid. Please enter a valid email');
      case 'invalid-phone-number-format':
        return const MFormatException('The Provided Phone Number format is Invalid. Please enter a valid phone number');
      case 'invalid-date-format':
        return const MFormatException('The date format is Invalid. Please enter a valid date');
      case 'invalid-url-format':
        return const MFormatException('The URL format is Invalid. Please enter a valid URL');
      case 'invalid-credit-card-format':
        return const MFormatException('The Credit card format is Invalid. Please enter a valid credit card number');
      case 'invalid-numeric-format':
        return const MFormatException('The input should be a valid numeric format');
      default:
        return const MFormatException("An Unexpected format error occurred, Please check your input.");

    }
  }
}