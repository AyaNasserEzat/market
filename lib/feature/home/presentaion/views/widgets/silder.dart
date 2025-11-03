import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/core/utils/app_assets.dart';
import 'package:pure_soft/core/utils/app_color.dart';
import 'package:pure_soft/feature/home/data/remote_data_sourse.dart/home_remote_data_source.dart';
import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/home_cubit/home_cubit.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/home_cubit/home_state.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/banner_img.dart';

class ImageCarouselWithCustomIndicator extends StatefulWidget {
  const ImageCarouselWithCustomIndicator({Key? key}) : super(key: key);

  @override
  State<ImageCarouselWithCustomIndicator> createState() =>
      _ImageCarouselWithCustomIndicatorState();
}

class _ImageCarouselWithCustomIndicatorState
    extends State<ImageCarouselWithCustomIndicator> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        HomeRepoImpl(
          homeRemoteDataSource: HomeRemoteDataSourceImpl(
            api: DioConcumer(dio: Dio()),
          ),
        ),
      )..getBanner(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is BannerLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BannerSuccess) {
            return Column(
              children: [
                // Carousel
                CarouselSlider.builder(
                  carouselController: _controller,
                  itemCount: state.banner.length,
                  itemBuilder: (context, index, realIndex) {
                    final url = state.banner[index].img;
                    return BannerImg(img: url);
                  },
                  options: CarouselOptions(
                    height: 150,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() => _current = index);
                    },
                  ),
                ),

                const SizedBox(height: 15),

                // ✅ Custom Indicator using Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(state.banner.length, (index) {
                    final bool isActive = index == _current;
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.green),
                          color: isActive ? AppColor.green : AppColor.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: isActive
                              ? [
                                  const BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ]
                              : [],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            );
          } else {
            return const Center(child: Text("حدث خطأ في تحميل البيانات"));
          }
        },
      ),
    );
  }
}
