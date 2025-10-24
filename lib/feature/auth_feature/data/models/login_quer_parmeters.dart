class LoginQuerParmeters {
  final String phone_email;
  final String password;

  LoginQuerParmeters({required this.phone_email, required this.password});
  toJson(){
    return {
      "phone_email":phone_email,
      "password":password
    };

  }

}