import 'package:intl/intl.dart';

class TFormatter{
  static String? formatDate(DateTime? date){
    date ??= DateTime.now();
    return null;
   
  } 
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: "em_US", symbol:"\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    //Asuming a 10 digit us phone number format: (123) 456-7890
  if(phoneNumber.length ==10){
    return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}";
  }else if(phoneNumber.length == 11){
    return "(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}";
  }
  //add more custom phone number formating logic for different formats if needed.
  return phoneNumber;
  }

  //not fully tested
  static String? internationalFormatPhoneNumber(String phoneNumber){
    //remove any non digit character from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), "");

    //EXTRACT THE COUNTRY CODE FROM THE DIGITSONLY
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);


    //add the remaing digits with the proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write("($countryCode) ");

    int i = 0;
    while (i < digitsOnly.length){
      int groupLenght = 2;
      if(i == 0 && countryCode == '+1'){
        groupLenght = 3;
      }

      int end  = i + groupLenght;
      formattedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formattedNumber.write('');
      }
      i = end;
    }
    return null;
  }
}