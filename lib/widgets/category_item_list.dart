import 'package:flutter/material.dart';

class CategoryItemlist extends StatelessWidget {
  const CategoryItemlist({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 5;
    return Padding(
      padding: const EdgeInsets.only(right: 44),
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CategoryItems(),
          );
        },
      ),
    );
  }
}

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                color: const Color(0xff58AEE8),
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
