import 'package:e_commerce_app/constants/colors.dart';
import 'package:e_commerce_app/widgets/banner_slider.dart';
import 'package:e_commerce_app/widgets/category_item_list.dart';

import 'package:e_commerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appLightGrey,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 44, right: 44, bottom: 32, top: 10),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_apple_blue.png'),
                        const Spacer(),
                        const Text(
                          'جستوجوی محصولات',
                          style: TextStyle(
                              fontFamily: 'SB',
                              color: CustomColor.appGrey,
                              fontSize: 16),
                        ),
                        const SizedBox(width: 10),
                        Image.asset('assets/images/icon_search.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: BannerSlider(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 44, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                          fontFamily: 'SB',
                          color: CustomColor.appGrey,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 85, child: CategoryItemlist()),
            ),
            SliverToBoxAdapter(
              child: moreAndTitle(
                'پر فروش ترین ها',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 216,
                child: Padding(
                  padding: const EdgeInsets.only(right: 34),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ProductItem(photoName: 'iphone'),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: moreAndTitle(
                'پر بازدید ترین ها',
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 216,
                child: Padding(
                  padding: const EdgeInsets.only(right: 34),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: ProductItem(
                          photoName: 'airpods-pro',
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MostSelletProducts extends StatelessWidget {
//   const MostSelletProducts({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 34),
//       child: ListView.builder(
//         reverse: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: ProductItem(photoName: ),
//           );
//         },
//       ),
//     );
//   }
// }

Widget moreAndTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 44, right: 44, top: 32, bottom: 20),
    child: Row(
      children: [
        Image.asset('assets/images/icon_left_categroy.png'),
        const SizedBox(width: 10),
        const Text(
          'مشاهده همه',
          style: TextStyle(
              fontFamily: 'SB', color: CustomColor.appBlue, fontSize: 12),
        ),
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'SB', color: CustomColor.appGrey, fontSize: 12),
        ),
      ],
    ),
  );
}
