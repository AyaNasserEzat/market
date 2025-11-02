class ForgetPasswordQuerParameter {
  final String email;

  ForgetPasswordQuerParameter({required this.email});
toJson(){
  return {
    "email":email
  };
}
}