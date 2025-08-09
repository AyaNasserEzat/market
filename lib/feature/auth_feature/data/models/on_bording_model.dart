

import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_strings.dart';

class OnBordingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBordingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
  static List<OnBordingModel> onBordingList = [
    OnBordingModel(
      title: AppStrings.onBordingTitle1,
      subTitle: AppStrings.onBordingSubTitle1,
      image: AppAssetes.onbording,
    ),
    OnBordingModel(
      title: AppStrings.onBordingTitle2,
      subTitle: AppStrings.onBordingSubTitle2,
      image: AppAssetes.onbording,
    ),
    OnBordingModel(
      title: AppStrings.onBordingTitle3,
      subTitle: AppStrings.onBordingSubTitle3,
      image: AppAssetes.onbording,
    ),
  ];
}
