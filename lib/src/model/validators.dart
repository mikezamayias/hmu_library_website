import 'package:validators/validators.dart';

String? isValidEmail(String email) {
  if (email.isEmpty) {
    return 'Email is required';
  }
  if (!isEmail(email)) {
    return 'Please enter a valid email';
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
  if (matches(
    password,
    RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$'),
  )) {
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
  return null;
}

String? isValidPhone(String value) {
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
