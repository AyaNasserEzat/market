
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_state.dart';

class VendorCubit extends Cubit<VendorState> {
  VendorCubit(this.homeRepo) : super(VendorInitial());
  final HomeRepo homeRepo;
  getVendor()async{
emit(VendorLoading());
final res= await homeRepo.getVendor();
res.fold((l)=>emit(VendorError(message: l.errorMessage)), (r)=>emit(VendorSuccess(vendor: r)));
  }
}
