import 'package:validators/validators.dart';

Map<String, dynamic> validateField = {
  'email': isValidEmail,
  'password': isValidPassword,
  'name': isValidName,
  'phoneNumber': isValidPhoneNumber,
  'confirmPassword': isValidConfirmPassword,
  'searchTerm': isValidSearchTerm,
  'else': null,
};

String? isValidEmail(String email) {
  if (email.isEmpty) {
    return 'Email is required';
  } else if (!isEmail(email)) {
    return 'Email is invalid';
  }
  return null;
}

String? isValidPassword(String password) {
  if (password.isEmpty) {
    return 'Password is required';
  }
  if (password.length < 8) {
    return 'Password must be at least 8 characters';
  }
  if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
      .hasMatch(password)) {
    return 'Password must contain at least one lowercase letter, one uppercase letter, and one number';
  }
  return null;
}

String? isValidName(String value) {
  if (value.isEmpty) {
    return 'Name is required';
  }
  if (value.length < 3) {
    return 'Name must be at least 3 characters';
  }
  if (value.contains(RegExp(r'[^a-zA-Z\s]'))) {
    return 'Name must only contain letters';
  }
  if (!RegExp(r'\s').hasMatch(value)) {
    return 'Name must contain at least one space';
  }
  return null;
}

String? isValidPhoneNumber(String value) {
  if (value.isEmpty) {
    return 'Phone number is required';
  }
  if (value.length != 10) {
    return 'Phone number must be 10 digits';
  }
  if (!isNumeric(value)) {
    return 'Phone number must only contain numbers';
  }
  return null;
}

String? isValidConfirmPassword(String password, String confirmPassword) {
  if (confirmPassword.isEmpty) {
    return 'Confirm password is required';
  }
  if (password != confirmPassword) {
    return 'Passwords do not match';
  }
  return null;
}

String? isValidSearchTerm(String value) {
  return null;
}
