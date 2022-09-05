import '../../domain/helpers/helpers.dart';

class AuthExceptionHandler {
  static handleException(e) {
    var status;

    switch (e.code.toUpperCase()) {
      case "ERROR_INVALID_EMAIL":
        status = AuthResultStatus.invalidEmail;
        throw status;

      case "WRONG_PASSWORD":
        status = AuthResultStatus.wrongPassword;

        throw status;
      case "ERROR_USER_NOT_FOUND":
        status = AuthResultStatus.userNotFound;
        throw status;

      case "ERROR_USER_DISABLED":
        status = AuthResultStatus.userDisabled;
        throw status;

      case "ERROR_TOO_MANY_REQUESTS":
        status = AuthResultStatus.tooManyRequests;
        throw status;

      case "ERROR_OPERATION_NOT_ALLOWED":
        status = AuthResultStatus.operationNotAllowed;
        break;
      case "EMAIL-ALREADY-IN-USE":
        print("AQUII EMAIL EM USO");
        status = AuthResultStatus.emailAlreadyExists;
        throw status;

      default:
        status = AuthResultStatus.undefined;
        throw status;
    }
    return status;
  }

  ///
  /// Accepts AuthExceptionHandler.errorType
  ///
  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "Your email address appears to be malformed.";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "Your password is wrong.";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "User with this email doesn't exist.";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "User with this email has been disabled.";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage = "Too many requests. Try again later.";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "Signing in with Email and Password is not enabled.";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage = "The email has already been registered. Please login or reset your password.";
        break;
      default:
        errorMessage = "An undefined Error happened.";
    }

    return errorMessage;
  }
}
