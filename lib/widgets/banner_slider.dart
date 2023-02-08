import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    int sliderCount = 3;
    var controller = PageController(viewportFraction: 0.8);
    return Stack(
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
                dotColor: Colors.white,
                activeDotColor: CustomColor.appBlue,
                dotHeight: 5,
                dotWidth: 5),
          ),
        ),
      ],
    );
  }
}
