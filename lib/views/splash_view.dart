import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screenWidth(context);
    final screenHeight = ScreenSize.screenHeight(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.230295567),
            Container(
              height: screenHeight * 0.1699507389,
              width: screenWidth * 0.2705866667,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/splash/logo.png',
                    ),
                  )),
            ),
            SizedBox(height: screenHeight * 0.007389163,),
            const Text(
              'Lucious',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Iowan',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Beauty Salon',
              style: TextStyle(
                letterSpacing: 7.2,
                fontSize: 14,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.bold,
              ),
            ),
            ],
        ),
      ),
    );
  }
}
