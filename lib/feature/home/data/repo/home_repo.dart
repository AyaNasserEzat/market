import 'package:dartz/dartz.dart';
import 'package:pure_soft/core/errors/exceptions.dart';
import 'package:pure_soft/core/errors/failure.dart';
import 'package:pure_soft/feature/home/data/models/vendor.dart';
import 'package:pure_soft/feature/home/data/remote_data_sourse.dart/home_remote_data_source.dart';

abstract class HomeRepo {
Future<Either<Failure,List<Vendor>>> getVendor();
}

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});
  @override
Future < Either<Failure, List<Vendor>>> getVendor() async{
try {
  final res=  await homeRemoteDataSource.getVendor();
  return Right(res);
} on ServerException catch (e) {
 return left(Failure(errorMessage: e.errorModel.errorMessage));
}
  }

}