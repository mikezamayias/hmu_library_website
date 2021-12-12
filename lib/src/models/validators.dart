import 'package:validators/validators.dart';

Map<String, dynamic> validateField = {
  'email': isValidEmail,
  'password': isValidPassword,
  'name': isValidName,
  'phoneNumber': isValidPhoneNumber,
  'confirmPassword': isValidConfirmPassword,
  'searchTerm': isValidSearchTerm,
  'message': isValidMessage,
  'address': isValidAddress,
  'postalCode': isValidPostalCode,
  'country': isValidCountry,
  'city': isValidCity,
  'studentId': isValidStudentId,
  'else': isElse,
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
    return 'Password is required';
  }
  if (password != confirmPassword) {
    return 'Passwords do not match';
  }
  return null;
}

String? isValidSearchTerm(String value) {
  if (value.isEmpty) {
    return 'Search term is required';
  }
  return null;
}

String? isValidMessage(String value) {
  if (value.isEmpty) {
    return 'Message is required';
  }
  if (value.length < 10) {
    return 'Message must be at least 10 characters';
  }
  if (value.length > 500) {
    return 'Message must be less than 500 characters';
  }
  return null;
}

String? isValidAddress(String value) {
  if (value.isEmpty) {
    return 'Address is required';
  }
  return null;
}

String? isValidPostalCode(String value) {
  if (value.isEmpty) {
    return 'Postal code is required';
  }
  if (value.length != 5) {
    return 'Postal code must be 5 digits';
  }
  if (value.contains(RegExp(r'[^0-9]'))) {
    return 'Postal code must only contain numbers';
  }
  return null;
}

String? isValidCountry(String value) {
  if (value.isEmpty) {
    return 'Country is required';
  }
  if (value.length < 3) {
    return 'Country must contain at least 3 characters';
  }
  if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'Country must only contain letters and spaces';
  }
  return null;
}

String? isValidCity(String value) {
  if (value.isEmpty) {
    return 'City is required';
  }
  if (value.length < 3) {
    return 'City must contain at least 3 characters';
  }
  if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'City must only contain letters and spaces';
  }
  return null;
}

String? isValidStudentId(String value) {
  if (value.isEmpty) {
    return 'Student ID is required';
  }
  if (value.length != 6) {
    return 'Student ID must be 9 characters';
  }
  if (!RegExp(r'^[a-zA-Z]{2}[0-9]{4}$').hasMatch(value)) {
    return 'Student ID must match the format of two letters followed by 4 '
        'digits';
  }
  return null;
}

String? isElse(String value) {
  return null;
}