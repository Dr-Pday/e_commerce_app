import 'package:e_commerce_app/constants/colors.dart';
import 'package:e_commerce_app/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

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
                        Image.asset('assets/images/icon_filter.png'),
                        const Expanded(
                          child: Text(
                            'پرفروش ترین ها',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SB',
                                color: CustomColor.appBlue,
                                fontSize: 16),
                          ),
                        ),
                        Image.asset('assets/images/icon_back.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => ProductItem(photoName: 'iphone')),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  childAspectRatio: 2 / 2.8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
