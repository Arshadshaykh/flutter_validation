class Validate {
  // Required validator: field must not be empty
  static dynamic requiredValidator({String? errorMessage, String? value}) {
    return (value?.isEmpty ?? true)
        ? (errorMessage ?? 'This field is required.')
        : null;
  }

  // Email validator
  static dynamic emailValidator({String? errorMessage, String? value}) {
    final RegExp _emailRegex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    return value == null || !_emailRegex.hasMatch(value)
        ? (errorMessage ?? 'Please enter a valid email address.')
        : null;
  }

  // TODO: have to implement phone number validator for different countries.
  static dynamic phoneValidator({String? errorMessage, String? value}) {
    final RegExp _phoneRegex = RegExp(
        r'^\+(?:[0-9]●?){6,14}[0-9]$'); // Example regex for international phone numbers

    if (value == null || !_phoneRegex.hasMatch(value)) {
      return errorMessage ?? 'Please enter a valid phone number.';
    }
    return null;
  }
// upper case validator: field must contain an uppercase
  static dynamic upperCaseValidator({String? errorMessage, String? value}) {
    if (!RegExp(r'[A-Z]').hasMatch((value ?? '').trim())) {
      return (errorMessage ?? 'Password must contain an uppercase letter');
    }
    return null;
  }

// lower case validator: field must contain a lowercase
  static dynamic lowerCaseValidator({String? errorMessage, String? value}) {
    if (!RegExp(r'[a-z]').hasMatch((value ?? '').trim())) {
      return (errorMessage ?? 'Password must contain a lowercase letter');
    }
    return null;
  }

// digit case validator: field must contain a digit
  static dynamic digitValidator({String? errorMessage, String? value}) {
    if (!RegExp(r'\d').hasMatch((value ?? '').trim())) {
      return (errorMessage ?? 'Password must contain at least one digit.');
    }
    return null;
  }

// special character validator: field must contain any one of these !@#$%^&*
  static dynamic specialCharValidator({String? errorMessage, String? value}) {
    if (!RegExp(r'[!@#$%^&*]').hasMatch((value ?? '').trim())) {
      return (errorMessage ??
          'Password must contain at least one special character.');
    }
    return null;
  }

// Strong Password validator
  static dynamic strongPassWordValidation(
      {int? minLength = 6,
      String? errorMessage,
      List? validations,
      String? value}) {
    if (value == null || value.isEmpty) {
      return (errorMessage ?? "Please enter password");
    }
    if (value.length < minLength!) {
      return 'Password must be at least $minLength characters long';
    }

    // Use separate validators
    final validators = validations == null || validations == []
        ? [
            upperCaseValidator(value: value),
            lowerCaseValidator(value: value),
            digitValidator(value: value),
            specialCharValidator(value: value)
          ]
        : validations;
    for (final validator in validators) {
      final error = validator;
      if (error != null) {
        return error;
      }
    }

    return null;
  }

// allow only alphabets and numbers
  static String? alphanumericValidator({String? errorMessage, String? value}) {
    if (value == null || value.isEmpty) {
      return (errorMessage ?? "Please enter a value");
    } else if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      return 'Please enter only letters and numbers';
    }
    return null;
  }

//maximum length validator 
static String? maxLengthValidator({int maxLength = 255, String? errorMessage, String? value}) {
  if (value == null || value.length > maxLength) {
    return (errorMessage ?? 'Please enter no more than $maxLength characters');
  }
  return null;
}

//minimum length validator 
  static String? minLengthValidator({int minLength = 1, String? errorMessage, String? value}) {
  if (value == null || value.length < minLength) {
    return (errorMessage ?? 'Please enter at least $minLength characters');
  }
  return null;
}

// Validator for using more than one validators
  static dynamic combineValidators({required List validators}) {
    for (final validator in validators) {
      final error = validator;
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}
