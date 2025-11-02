import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_soft/core/database/api/dio_concumer.dart';
import 'package:pure_soft/feature/home/data/remote_data_sourse.dart/home_remote_data_source.dart';
import 'package:pure_soft/feature/home/data/repo/home_repo.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_cubit.dart';
import 'package:pure_soft/feature/home/presentaion/view_models/vendor_cubit.dart/vendor_state.dart';
import 'package:pure_soft/feature/home/presentaion/views/widgets/custom_container_home.dart';

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isDesktop = screenWidth >= 1024;

    int crossAxisCount;
    double aspectRatio;

    if (isMobile) {
      crossAxisCount = 1;
      aspectRatio = 10 / 3;
    } else if (isTablet) {
      crossAxisCount = 2;
      aspectRatio = 40 / 12;
    } else {
      crossAxisCount = 3;
      aspectRatio = 63 / 18;
    }

    return BlocBuilder<VendorCubit, VendorState>(
      builder: (context, state) {
        if (state is VendorLoading) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (state is VendorError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('حدث خطأ: ${state.message}')),
          );
        } else if (state is VendorSuccess) {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final vendor = state.vendor[index];
                return CustomContainerHome(
                 vendor: vendor,
                
                );
              },
              childCount: state.vendor.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: aspectRatio,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }
      },
    );
  }
}
