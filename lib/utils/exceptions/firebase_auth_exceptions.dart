class MFirebaseAuthException implements Exception {
  final String code;

  MFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The Email Address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The Email Address provided is Invalid. Please enter a Valid Email';
      case 'weak-password':
        return 'The Password is too weak. Please use a stronger password.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact Customer Support';
      case 'user-not-found':
        return 'Invalid Login Details. User Not Found';
      case 'wrong-password':
        return 'Incorrect Password, Please check your password and try again';
      case 'invalid-verification-code':
        return 'Invalid Verification Code, Please enter a Valid Code';
      case 'invalid-verification-id':
        return 'Invalid Verification ID, Please request a new verification code';
      case 'quota-exceeded':
        return 'Quota Exceeded, Please try again later';
      case 'email-already-exists':
        return 'The Email Address already exists, Please use a different email';
      case 'provider-already-linked':
        return 'This account is already linked with another provider';
      case 'operation-not-allowed':
        return 'Operation not allowed. Contact Customer Support for assistance';
      case 'too-many-requests':
        return 'Too many requests. Please try again later';
      case 'account-exists-with-different-credential':
        return 'An Account already exists with the same email but different sign-in credentials';
      case 'credential-already-in-use':
        return 'This Credential already in use. Please try again with a different credential';
      case 'requires-recent-login':
        return 'This Operation is sensitive and requires recent Authentication. Please login again';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection';
      case 'user-mismatch':
        return 'The Supplied credentials does not match the previously signed in user.';
      case 'expired-action-code':
        return 'The action code has expired, please request for a new action code';
      case 'invalid-action-code':
        return 'Invalid action code. Please check the code and try again';
      case 'invalid-id-token':
        return 'Invalid ID token. Please try again with a valid ID token';
      case 'invalid-credential':
        return 'Invalid Credentials, Please check and try again';
      case 'unauthorized-domain':
        return 'Unauthorized domain. Please try again with an authorized domain';
      case 'canceled-popup-request':
        return 'Canceled popup request. Please try again';
      case 'popup-closed-by-user':
        return 'Popup closed by user. Please try again';
      case 'popup-blocked-by-browser':
        return 'Popup blocked by browser. Please try again in a different browser';
      case 'missing-action-code' :
        return 'The Action code is missing, Please provide a valid action code.';
      case 'user-token-expired' :
        return 'The user\'s token has expired and Authentication is required, please sign-in again';
      case 'user-token-revoked' :
        return 'The User\'s token has been revoked, please sign in again';
      case 'invalid-message-payload' :
        return 'The email template verification message payload is invalid';
      default:
        return 'An unknown error occurred. Please try again later';
    }
  }
}
