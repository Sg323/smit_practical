
import '../res/string.dart';
import 'constant.dart';

class UtilsValidation {
  static int passwordLength = Constants.passwordLength;
  static int usernameLength = Constants.usernameLength;
  static int yourNameLength = Constants.yourNameLength;
  static int phoneNumberLength = Constants.phoneNumberLength;

  static String? emailValidator(String? value) {
    const Pattern pattern = StringRes.pattern;
    final RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return StringRes.plzEnterEmail;
    } else if (!regex.hasMatch(value)) {
      return StringRes.emailValidation;
    }
    return null;
  }

  static String? yourNameValidator(String? value) {
    if (value!.isEmpty) {
      return StringRes.yourNameValidation;
    } else if (value.length <= 3) {
      return StringRes.yourNameValidation;
    } else {
      return null;
    }
  }

  static String? phoneValidator(String? value) {
    if (value!.isEmpty) {
      return StringRes.enterNumber;
    } else if (value.length < phoneNumberLength) {
      return StringRes.mustDigits;
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return StringRes.pleaseEnterPassword;
    } else if (value.length <= passwordLength) {
      return StringRes.digitsPassword;
    } else {
      return null;
    }
  }

 static String? retypePasswordValidator(String? value,String? password) {
    if (value!.isEmpty) {
      return StringRes.pleaseEnterPassword;
    } else if (value != password) {
      return StringRes.notMatchPassword;
    } else {
      return null;
    }
  }

  // static String? usernameValidator(String? value) {
  //   if (value!.isEmpty) {
  //     return StringRes.userNameError;
  //   } else if (value.length < 6 || value.length > 20) {
  //     return StringRes.digitsPassword;
  //   } else {
  //     return null;
  //   }
  // }
}
