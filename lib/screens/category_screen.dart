import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
                        const Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            'دسته بندی',
                            style: TextStyle(
                                fontFamily: 'SB',
                                color: CustomColor.appBlue,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)),
                  );
                }),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
