String? vaildpassword (String? value) {
   if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  // RegEx pattern for validating email
                  String pattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
                  RegExp regex = RegExp(pattern);
                  if (!regex.hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null; //
}
