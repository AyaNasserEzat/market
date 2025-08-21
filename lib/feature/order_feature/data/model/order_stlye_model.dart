import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/core/utils/app_strings.dart';

class OrderStlyeModel {
  Color? color1;
  Color? color2;
  String? icon;
  String? status;
  OrderStlyeModel({
    required this.color1,
    required this.color2,
    required this.icon,
    required this.status,
  });
  static List<OrderStlyeModel> orderStlyeList = [
    OrderStlyeModel(
      color1: AppColor.orage00,
      color2: AppColor.orangec9,
      icon: AppAssetes.delivering,
      status: AppStrings.delivering,
    ),
      OrderStlyeModel(
    color1: AppColor.green1A,
    color2: AppColor.green8,
    icon: AppAssetes.finishedImage,
    status: AppStrings.finishedOrder,
  ),
    OrderStlyeModel(
    color1: AppColor.red,
    color2: AppColor.pinkLight,
    icon: AppAssetes.cancelImage,
    status: AppStrings.cancelledOrder,
  ),
      OrderStlyeModel(
    color1: AppColor.blueDark,
    color2: AppColor.blueLight,
    icon: AppAssetes.workingImage,
    status: AppStrings.workingOrder,
  ),
  OrderStlyeModel(
    color1: AppColor.purple,
    color2: AppColor.pinkLight,
    icon: AppAssetes.deliveredImage,
    status: AppStrings.deliveredOrder,
  ),
    OrderStlyeModel(
    color1: AppColor.skylight,
    color2: AppColor.blueSky,
    icon: AppAssetes.newImage,
    status: AppStrings.newOrder,
  ),

  ];
}
