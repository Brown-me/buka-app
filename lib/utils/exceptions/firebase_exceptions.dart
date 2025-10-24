class MFirebaseException implements Exception {
  final String code;

  MFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token is incorrect. Please check your custom token';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'No user found for the given email or UID';
      case 'invalid-email':
        return 'The Email Address Provided is invalid';
      case 'email-already-in-use':
        return 'The Email Address is already registered, please use another email address';
      case 'wrong-password':
        return 'Incorrect Password, Please check your password and try again';
      case 'weak-password':
        return 'The Password is too weak, Please choose a stronger password';
      case 'provider-already-linked':
        return 'This account is already linked with another provider';
      case 'operation-not-allowed':
        return 'Operation not allowed. Contact Customer Support for assistance';
      case 'invalid-credential':
        return 'The supplied credentials is malformed or expired';
      case 'invalid-verification-code':
        return 'Invalid Verification Code, Please enter a Valid Code';
      case 'invalid-verification-id':
        return 'Invalid Verification ID, Please request a new verification code';
      case 'captcha-check-failed':
        return 'The reCAPTCHA response is invalid, Please try again';
      case 'app-not-authorized':
        return 'The App is not authorized to use Firebase Authentication with the provided API key';
      case 'keychain-error':
        return 'A Keychain error occurred, Please check the keychain and try again';
      case 'internal-error':
        return 'An internal Authentication error occurred, please try again later';
      case 'invalid-app-credential':
        return 'Invalid App Credentials.';
      case 'user-mismatch':
        return 'The Supplied credentials does not correspond to the previously signed in user';
      case 'requires-recent-login':
        return 'This Operation is sensitive and requires recent Authentication. Please login again';
      case 'quota-exceeded':
        return 'Quota Exceeded, Please try again later';
      case 'account-exists-with-different-credential':
        return 'An Account already exists with the same email but different sign-in credentials';
      case 'missing-iframe-start':
        return 'The Email template is missing the iframe start tag';
      case 'missing-iframe-end':
        return 'The Email template is missing the iframe end tag';
      case 'missing-iframe-src':
        return 'The Email template is missing the iframe src attribute';
      case 'auth-domain-config-required':
        return 'The authDomain configuration is required for the action code verification link';
      case 'missing-app-credential':
        return 'The app credential is missing, please provide valid app credentials';
      case 'uid-already-exists':
        return 'The Provided user id is already in use by another user';
      case 'web-storage-unsupported':
        return 'Web storage unsupported or is disabled';
      case 'app-deleted':
        return 'This instance of FirebaseApp has been deleted';
      case 'session-cookie-expired':
        return 'The Firebase Session cookie has expired, Please sign in again';
      case 'user-token-mismatch':
        return 'The Provided user\'s token has a mismatch with the authenticated user\'s ID ';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid';
      case 'invalid-sender':
        return 'The Email template sender is invalid, please verify the sender\'s email';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid, please verify the recipient email';
      case 'missing-action-code':
        return 'The Action code is missing. Please provide a valid action code';
      case 'user-token-expired':
        return 'The user\'s token has expired and authentication is required, Please sign in again';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials';
      case 'expired-action-code':
        return 'Expired action code. Please request a new action code';
      case 'invalid-action-code':
        return 'Invalid action code. Please check the code and try again';
      case 'credential-already-in-use':
        return 'This Credential already in use. Please try again with a different credential';

      default:
        return 'An unknown error occurred. Please try again later';
    }
  }
}
