import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  int sliderCount = 3;
  var controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                height: 177,
                child: PageView.builder(
                  controller: controller,
                  itemCount: sliderCount,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.redAccent,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                bottom: 15,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: sliderCount,
                  effect: const ExpandingDotsEffect(
                      expansionFactor: 5,
                      dotColor: AppColors.appWhite,
                      activeDotColor: AppColors.appBlue,
                      dotHeight: 5,
                      dotWidth: 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
