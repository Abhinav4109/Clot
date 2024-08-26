class SigninUseCase {
    String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
   String? validatePass(String? value){
    if(value == null || value.isEmpty){
      return 'Please enter your password';
    }
    if(value.length<6){
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}