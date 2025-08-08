
import 'package:flutter/material.dart';
import 'package:pure_soft/feature/auth_feature/data/models/on_bording_model.dart';
import 'package:pure_soft/feature/auth_feature/presentation/views/widgets/onbording_page.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({super.key});

  @override
  State<OnbordingView> createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
    int currentIndex=0;
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
              controller: pageController,
          onPageChanged: (int index) {
            
            setState(() {
              currentIndex=index;
            });
          },
          itemCount: OnBordingModel.onBordingList.length,
        itemBuilder: (context, index) {
          return OnbordingPage(
            onBordingModel: OnBordingModel.onBordingList[index],
            currentIndex: currentIndex,
            pageController: pageController,
          );
        },
      ),
    );
  }
}
