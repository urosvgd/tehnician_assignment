class FormValidator {
  static validateFullName(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter your full name';
    }
    return null;
  }

  static validateEmail(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter an email';
    } else if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$").hasMatch(value!)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  static validatePhoneNumber(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Please enter a phone number';
    } else if (value!.length < 10 || value.length > 15) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}
