import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Colors.redAccent,
                    shadows: const [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 30,
                        spreadRadius: -6,
                        offset: Offset(0, 12),
                      ),
                    ],
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'همه',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
