import 'package:dotted_line/dotted_line.dart';
import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appLightGrey,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 44, right: 44, bottom: 12, top: 10),
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
                                'سبد خرید',
                                textAlign: TextAlign.center,
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
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 5,
                    (context, index) {
                      return const ItemCards();
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 44, left: 44, bottom: 20),
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                  color: CustomColor.appGreen,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    'ادامه فرایند خرید',
                    style: TextStyle(
                        fontFamily: 'SB', fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCards extends StatelessWidget {
  const ItemCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 20),
      child: Container(
        height: 275,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 18,
              spreadRadius: -16,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        'آیفون ۱۳ پرومکس',
                        style: TextStyle(fontSize: 16, fontFamily: 'SB'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'گارانتی ۱۸ ماه مدیا پردازش',
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'SB',
                            color: CustomColor.appGrey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 25,
                            height: 15,
                            decoration: BoxDecoration(
                              color: CustomColor.appRed,
                              borderRadius: BorderRadius.circular(7.5),
                            ),
                            child: const Center(
                              child: Text(
                                '٪۳',
                                style: TextStyle(
                                    fontFamily: 'SB',
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'تومان',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SM',
                                color: CustomColor.appGrey),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '۴۶،۰۰۰،۰۰۰',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'SM',
                                color: CustomColor.appGrey),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 180,
                        child: Wrap(
                          textDirection: TextDirection.rtl,
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            Container(
                              width: 94,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: CustomColor.appLightGrey),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/icon_options.png'),
                                    const Spacer(),
                                    const Text(
                                      '۲۵۶ گیگابایت',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: CustomColor.appGrey,
                                          fontFamily: 'SM'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: CustomColor.appLightGrey),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/icon_options.png'),
                                    const Spacer(),
                                    const Text(
                                      '۱',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: CustomColor.appGrey,
                                          fontFamily: 'SM'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 108,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: CustomColor.appLightGrey),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/icon_options.png'),
                                    const Spacer(),
                                    const Text(
                                      'سبز کله غازی',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: CustomColor.appGrey,
                                          fontFamily: 'SM'),
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CustomColor.appGreen),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 69,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: CustomColor.appLightGrey),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      'ذخیره',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: CustomColor.appGrey,
                                          fontFamily: 'SM'),
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          'assets/images/active_fav_product.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 62,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: CustomColor.appLightGrey),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      'حذف',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: CustomColor.appGrey,
                                          fontFamily: 'SM'),
                                    ),
                                    const Spacer(),
                                    SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          'assets/images/icon_trush.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 18),
                  Image.asset('assets/images/iphone.png'),
                ],
              ),
              const SizedBox(height: 15),
              const DottedLine(
                dashColor: CustomColor.appLightGrey,
                lineThickness: 2,
                dashLength: 8,
                dashGapLength: 3,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'تومان',
                    style: TextStyle(fontFamily: 'SM', fontSize: 12),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '۴۵،۵۴۰.۰۰۰',
                    style: TextStyle(fontFamily: 'SM', fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
