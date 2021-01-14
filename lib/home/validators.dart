abstract class StringValidator {
  bool isValid(String value);
}

class NonEmptyStringValidator implements StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

class JobAndRateValidators {
  final StringValidator jobValidator = NonEmptyStringValidator();
  final StringValidator rateValidator = NonEmptyStringValidator();
  final String invalidJobErrorText = 'Job can\'t be empty';
  final String invalidRateErrorText = 'Rate Per Hour can\'t be empty';
}
