

import 'package:pure_soft/feature/home/data/models/product_model.dart';
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
//vendor products

class VendorProductsSuccess extends VendorState {
  final List<ProductModel>  vendor;
  VendorProductsSuccess({required this.vendor});
}




class VendorProductsError extends VendorState {
  final String message;
  VendorProductsError({required this.message});
}


