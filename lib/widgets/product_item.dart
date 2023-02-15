import 'package:e_commerce_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.photoName});
  String photoName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: double.infinity,
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
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
                          fontFamily: 'SB', fontSize: 10, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset('assets/images/$photoName.png'),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/active_fav_product.png'),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10.0, bottom: 10),
            child: Text(
              'آیفون ۱۳ پرومکس',
              style: TextStyle(fontSize: 14, fontFamily: 'SM'),
            ),
          ),
          //const Spacer(),
          Container(
            height: 53,
            decoration: const BoxDecoration(
              color: CustomColor.appBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: CustomColor.appBlue,
                  blurRadius: 25,
                  spreadRadius: -12,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    'تومان',
                    style: TextStyle(
                        fontFamily: 'SM', fontSize: 12, color: Colors.white),
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
                        '۴۳،۹۹۹،۹۹۹',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SM',
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                        'assets/images/icon_right_arrow_cricle.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
