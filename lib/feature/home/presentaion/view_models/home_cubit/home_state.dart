

import 'package:flutter/widgets.dart';
import 'package:pure_soft/feature/home/data/models/banner_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}


class BannerLoading extends HomeState {}


class BannerSuccess extends HomeState {
  final List<BannerModel>  banner;
  BannerSuccess({required this.banner});
}




class BannerError extends HomeState {
  final String message;
  BannerError({required this.message});
}


