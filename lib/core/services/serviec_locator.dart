import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pure_soft/core/database/api/api_consumer.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/feature/auth_feature/data/remote_data_soures/auth_remote_data_source.dart';
import 'package:pure_soft/feature/auth_feature/data/repo/auth_repo_imp.dart';
final sl=GetIt.instance;
void setupServicesLocator(){
//   sl.registerLazySingleton(()=>Dio());
//   sl.registerLazySingleton<ApiConsumer>(()=>DioConcumer(dio: sl()));
//     sl.registerLazySingleton<AuthRemoteDataSourceImp>(()=>sl());
  
// sl.registerSingletonIfAbsent<AuthRepo>(()=>AuthRepoImp(authRemoteDataSource: s1()));


}
