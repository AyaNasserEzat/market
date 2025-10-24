import 'package:dartz/dartz.dart';
import 'package:pure_soft/core/errors/exceptions.dart';
import 'package:pure_soft/core/errors/failure.dart';
import 'package:pure_soft/feature/auth_feature/data/models/auth_qerparmeter.dart';
import 'package:pure_soft/feature/auth_feature/data/models/register_response_model.dart';
import 'package:pure_soft/feature/auth_feature/data/remote_data_soures/auth_remote_data_source.dart';
abstract class AuthRepo{
Future<Either<Failure, RegisterResponseModel>> register(AuthQerparmeter querParameters);
}
class AuthRepoImp extends AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImp({required this.authRemoteDataSource});
  
  @override
  Future<Either<Failure, RegisterResponseModel>> register(AuthQerparmeter querParameters)async {
try{
final res=await authRemoteDataSource.register(querParameters);
if(res.status==true){
return Right(res);
}
else{
  return left(Failure(errorMessage:res.message!));
}
}on ServerException catch(e){
return left(Failure(errorMessage: e.errorModel.errorMessage));
}
  }


}