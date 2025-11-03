
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  final HomeRepo homeRepo;
  getBanner()async{
emit(BannerLoading());
final res= await homeRepo.getBanner();
res.fold((l)=>emit(BannerError(message: l.errorMessage)), (r)=>emit(BannerSuccess(banner: r)));
  }
}
