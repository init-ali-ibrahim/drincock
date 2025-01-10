import 'package:form_validator/form_validator.dart';

class FormValidatorInit {
  static void setup() {
    ValidationBuilder.setLocale("ru");
    ValidationBuilder.globalOptions.phoneRegExp =
        RegExp(r'^\+?\d{1,3}\s?\(?\d{3}\)?[\s-]?\d{3}[\s-]?\d{2}[\s-]?\d{2}$');
  }
}