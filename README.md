
[![Pub](https://img.shields.io/badge/pub-v0.0.1-blue)](https://pub.dartlang.org/packages/Flutter_validation)
[![License](https://img.shields.io/badge/licence-MIT-orange.svg)](https://github.com/Arshadshaykh/flutter_validation/blob/main/LICENSE)

## Description
This package provides a set of commonly used validation functions for form fields in Flutter applications.

## Salient Features
- Required field validation: Checks if a field is empty.
- Email validation: Validates email addresses based on a regular expression.
- Phone number validation: Basic phone number validation (can be extended for specific countries).
- Alphanumeric validation: Allows only letters and numbers.
- Password strength validation: Checks for uppercase, lowercase, digits, and special characters (customizable).
- Minimum and maximum length validation: Enforces minimum and maximum character lengths for a field.
- Combined phone/email validation: Allows users to enter either a valid phone number or email address.
- Combine multiple validators: Combine multiple validators for complex validations.
- 
## Installation
```yaml
dependencies:
  flutter_validations: ^0.0.1 (or any compatible version)

```
## Usage

#### Using Flutter_validation

###### Required validator:
Using `Validate.requiredValidator();`

```dart
TextFormField(
  autovalidateMode: AutovalidateMode.onUserInteraction,
  controller: firstNameController,
  validator: (value) =>
    Validate.requiredValidator(
    errorMessage: 'This field must not be empty.',
    value: value
    ),
),
```

###### Email validator:
Using `Validate.emailValidator();`

```dart
TextFormField(
  autovalidateMode: AutovalidateMode.onUserInteraction,
  controller: firstNameController,
  validator: (value) =>
    Validate.emailValidator(
    errorMessage: 'Please enter valid email address.',
    value: value
    ),
),
```

## Info

Feel Free to request any missing features or report issues [here](https://github.com/Arshadshaykh/flutter_validation/issues).

## License

```
MIT License

Copyright (c) 2024 Arshad Shaikh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
