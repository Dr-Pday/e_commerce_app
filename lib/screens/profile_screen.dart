import 'package:e_commerce_app/constants/colors.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appLightGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              'عرفان انق',
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: 'SB'),
            ),
            const SizedBox(height: 6),
            const Text(
              '09120049791',
              style: TextStyle(
                color: CustomColor.appGrey,
                fontSize: 12,
                fontFamily: 'SM',
              ),
            ),
            const SizedBox(height: 20),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                spacing: 39,
                runSpacing: 20,
                children: [
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                  getSettingItems(),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'اپل شاپ',
              style: TextStyle(
                  fontSize: 10, fontFamily: 'SM', color: CustomColor.appGrey),
            ),
            const SizedBox(height: 5),
            const Text(
              'V-1.0.0',
              style: TextStyle(
                  fontSize: 10, fontFamily: 'SM', color: CustomColor.appGrey),
            ),
            const SizedBox(height: 5),
            const Text(
              'Instagram.com/erfun_onaq',
              style: TextStyle(
                  fontSize: 10, fontFamily: 'SM', color: CustomColor.appGrey),
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }

  Widget getSettingItems() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: ShapeDecoration(
                color: CustomColor.appBlue,
                shadows: const [
                  BoxShadow(
                    color: Color(0xff58AEE8),
                    blurRadius: 25,
                    spreadRadius: -12,
                    offset: Offset(0, 12),
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
            Image.asset('assets/images/icon_category_all.png'),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          'همه',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'SB',
              fontSize: 12,
              color: Colors.black),
        )
      ],
    );
  }
}
