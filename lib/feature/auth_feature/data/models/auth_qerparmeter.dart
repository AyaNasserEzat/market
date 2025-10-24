class AuthQerparmeter {
  final String name;
  final String password;
  final String c_password;
  final String phone;

  AuthQerparmeter({required this.name, required this.password, required this.c_password, required this.phone});
toJson(){
  return {
      "name":name,
  "password":password,
  "c_password":c_password,
  "mobile":phone

  };
}

}