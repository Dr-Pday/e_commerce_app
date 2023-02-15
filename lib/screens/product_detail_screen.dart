import 'dart:ui';

import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

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
                            'حساب کاربری',
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
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  ' SE 2022 آیفون',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'SB', fontSize: 16),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: CustomColor.appGrey,
                        blurRadius: 20,
                        spreadRadius: -18,
                        offset: Offset(0, 12),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 10, left: 10, bottom: 18),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/icon_star.png'),
                            const SizedBox(width: 6),
                            const Text(
                              '۴.۶',
                              style: TextStyle(fontSize: 12, fontFamily: 'SM'),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset('assets/images/iphone_se.png'),
                            ),
                            const Spacer(),
                            const SizedBox(width: 28),
                            Image.asset(
                                'assets/images/icon_favorite_deactive.png'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            reverse: true,
                            itemBuilder: (context, index) {
                              return smallImageBox();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب رنگ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'SM', fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        colorSelectedItem(),
                        colorSelectedItem(),
                        colorSelectedItem(),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب حافظه داخلی',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'SM', fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        storageSelectItem(),
                        storageSelectItem(),
                        storageSelectItem(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: moreOptionItems(': مشخصات فنی'),
            ),
            SliverToBoxAdapter(
              child: moreOptionItems(': توضیحات محصول'),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                child: Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: CustomColor.appGrey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/icon_left_categroy.png'),
                        const SizedBox(width: 10),
                        const Text(
                          'مشاهده',
                          style: TextStyle(
                            fontFamily: 'SB',
                            fontSize: 12,
                            color: CustomColor.appBlue,
                          ),
                        ),
                        const Spacer(),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ratingImages(CustomColor.appRed),
                            Positioned(
                                right: 18,
                                child: ratingImages(CustomColor.appBlue)),
                            Positioned(
                                right: 36,
                                child: ratingImages(CustomColor.appGreen)),
                            Positioned(
                                right: 54,
                                child: ratingImages(CustomColor.appLightGrey)),
                            Positioned(
                              right: 72,
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: CustomColor.appGrey,
                                ),
                                child: const Center(
                                  child: Text(
                                    '+۹',
                                    style: TextStyle(
                                        fontFamily: 'SB',
                                        fontSize: 10,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          ':نظرات کاربران ',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 44, left: 44, top: 38, bottom: 32),
                child: Row(
                  children: const [
                    Price(),
                    Spacer(),
                    AddToBasket(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  storageSelectItem() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 74,
      height: 26,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.5, color: CustomColor.appGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          '۲۵۶',
          style: TextStyle(fontFamily: 'SM', fontSize: 12),
        ),
      ),
    );
  }

  colorSelectedItem() {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 26,
      width: 26,
      decoration: BoxDecoration(
        color: CustomColor.appRed,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  moreOptionItems(String optionName) {
    return Padding(
      padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: CustomColor.appGrey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Image.asset('assets/images/icon_left_categroy.png'),
              const SizedBox(width: 10),
              const Text(
                'مشاهده',
                style: TextStyle(
                  fontFamily: 'SB',
                  fontSize: 12,
                  color: CustomColor.appBlue,
                ),
              ),
              const Spacer(),
              Text(
                optionName,
                style: const TextStyle(
                  fontFamily: 'SM',
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ratingImages(Color color) {
    return Container(
      width: 26,
      height: 26,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
    );
  }

  smallImageBox() {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 20),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: CustomColor.appGrey, width: 1),
      ),
      child: Image.asset(
        'assets/images/iphone_se.png',
        fit: BoxFit.contain,
      ),
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: 140,
          height: 47,
          decoration: BoxDecoration(
            color: CustomColor.appGreen,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          top: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                height: 53,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Row(
                    children: [
                      const Text(
                        'تومان',
                        style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 12,
                            color: Colors.white),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '۴۵،۹۹۹،۰۰۰',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white,
                                decorationThickness: 1.5,
                                fontSize: 12,
                                fontFamily: 'SM',
                                color: Colors.white),
                          ),
                          Text(
                            '۴۳،۹۹۹،۰۰۰',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'SM',
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 25,
                        height: 15,
                        decoration: BoxDecoration(
                          color: CustomColor.appRed,
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: const Text(
                          '%۳',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SB',
                              fontSize: 10,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AddToBasket extends StatelessWidget {
  const AddToBasket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: 140,
          height: 47,
          decoration: BoxDecoration(
            color: CustomColor.appBlue,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          top: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                height: 53,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Colors.transparent),
                child: const Center(
                  child: Text(
                    'افزودن به سبد خرید',
                    style: TextStyle(
                        fontFamily: 'SB', fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
