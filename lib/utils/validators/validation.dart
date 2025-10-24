
class MValidator {

  static String? validateEmptyText(String? fieldName, String? value){
    if (value == null || value.isEmpty){
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateNIN(String? value) {
    if (value == null || value.isEmpty) {
      return 'NIN is required';
    }
    final ninRegExp = RegExp(r'^\d{11}$');
    if (!ninRegExp.hasMatch(value)) {
      return 'NIN must be exactly 11 digits';
    }
    return null;
  }



  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty){
      return 'Email is required';
    }
    
    //Regular Expression for Email Validation 
    
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email';
    }

    return null;
  }
  static String? validateAccountNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Account number is required';
    }
    // Nigeria account number must be 10 digits
    final accountRegExp = RegExp(r'^\d{10}$');
    if (!accountRegExp.hasMatch(value)) {
      return 'Invalid account number. It must be exactly 10 digits.';
    }
    return null;
  }
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {

      return 'Password is Required';
    }

    // Check for Minimum PassWord Length
    if (value.length < 6) {
      return 'Password must be at least 8 Characters long.';
    }

    // Check for Uppercase Letters 
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:"{}|<>]'))) {
      return 'Password must contain at least one special character.';
    }

    return null;
  }
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is Required';
    }

    // Regular Exp for phone number validation

    final phoneRegExp = RegExp(r'^0\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number Format';
    }
    return null;
  }

  static String? validateConfirmPassword(String? confirmPassword, String? password) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Confirm Password is required';
    }
    if (confirmPassword != password) {
      return 'Passwords do not match';
    }
    return null;
  }


}