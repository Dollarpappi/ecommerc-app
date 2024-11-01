class TValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    //Regular expressions for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email adress';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if (
      value == null || value.isEmpty
    ){
      return 'Password is required.';
    }

     //check for minimum password lenght
  if(value.length < 6){
    return "Password must be at least 6 characters long";
  }

  //check for uppercase letters
  if(!value.contains(RegExp(r'[A-Z]'))){
    return 'Password must contain at least one number';
  }

  //check for nubers
  if(!value.contains(RegExp(r'[0-9]'))){
    return "Password must contain atleast one number";
  }

  //check for special characters
  if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}<>]'))){
    return 'Password must contain at least one special character';
  }return null;

  }

  static String? validatePhoneNumber(String? value){
    if(value == null  || value.isEmpty){
      return "Phone number is required";
    }

    //regular expression for phone number validation (assuming a 10 digit US phone number)
    final phoneRegExp = RegExp(r'^d[10]');

    if (!phoneRegExp.hasMatch(value)){
      return "Invalid phone number format (10 digit required)";
    }return null;
  }

 
}