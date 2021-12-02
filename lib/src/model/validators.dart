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
