

import 'package:pure_soft/feature/home/data/models/vendor.dart';

abstract class VendorState {}

class VendorInitial extends VendorState {}


class VendorLoading extends VendorState {}


class VendorSuccess extends VendorState {
  final List<Vendor>  vendor;
  VendorSuccess({required this.vendor});
}




class VendorError extends VendorState {
  final String message;
  VendorError({required this.message});
}


