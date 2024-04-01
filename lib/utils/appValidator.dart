// ignore_for_file: file_names

class AppValidator
{

  String? validateEmail(value){
    if(value!.isEmpty){
      return 'Please enter an email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Please enter valid email';
    }
    return null;
  }

  String? validateUsername(value){
    (value){
                  if(value!.isEmpty)
                  {
                    return 'Please enter a username';
                  }
                  return null;
                };
    return null;
  }

  String? validatePhoneNo(value){
    if(value!.isEmpty){
      return 'Please enter a Phone number';
    }
    if(value.length!=10){
      return 'Please enter 10 digit phone number';
    }
    return null;
  }

  String? validatePassword(value){
    if(value!.isEmpty){
      return 'Please enter a Password';
    }
    return null;
  }

  String? isEmptyCheck(value){
    if(value!.isEmpty){
      return 'Please fill the details';
    }
    return null;
  }


}