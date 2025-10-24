import 'package:pure_soft/core/database/api/api_consumer.dart';
import 'package:pure_soft/core/database/api/end_point.dart';
import 'package:pure_soft/feature/auth_feature/data/models/auth_qerparmeter.dart';
import 'package:pure_soft/feature/auth_feature/data/models/login_quer_parmeters.dart';
import 'package:pure_soft/feature/auth_feature/data/models/login_response_model.dart';
import 'package:pure_soft/feature/auth_feature/data/models/register_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<RegisterResponseModel> register(AuthQerparmeter querParameters);
    Future<LoginResponseModel> login(LoginQuerParmeters querParameters);
}

class AuthRemoteDataSourceImp extends AuthRemoteDataSource{
 final ApiConsumer api;

  AuthRemoteDataSourceImp({required this.api});
  @override
 Future<RegisterResponseModel> register(AuthQerparmeter querParameters) async{
 final res=await api.post(EndPoint.register,querParameters:querParameters.toJson());

 return RegisterResponseModel.fromJson(res);
  }
  
  @override
  Future<LoginResponseModel> login(LoginQuerParmeters querParameters)async {
   final res=await api.post(EndPoint.login,querParameters:querParameters.toJson());

 return LoginResponseModel.fromJson(res);
  }
}