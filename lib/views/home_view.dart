import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screenWidth(context);
    final screenHeight = ScreenSize.screenHeight(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.088 / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Urbanist',
                        ),
                      ),
                      Text(
                        'Rayna Carder',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Iowan',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: screenWidth * 0.092426667,
                    width: screenHeight * 0.042684729,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffeaeaea)),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: screenHeight * 0.020270936,
                    ),
                  )
                ],
              ),
              const Text(
                'Exclusive Offers',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Urbanist',
                ),
              ),
              Container(
                height: screenHeight * 0.173362069,
                width: screenWidth * 0.912,
                decoration: BoxDecoration(
                  color: const Color(0xffD6B99E),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Upto 50%',
                          style: TextStyle(
                              fontSize: 14.44,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Urbanist',
                              color: Color(0xffE78377)),
                        ),
                        const Text(
                          'Look more beautiful and Save more discount.',
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 14.44,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Urbanist',
                              color: Color(0xffffffff)),
                        ),
                        Container(
                          width: screenWidth * 0.317626667,
                          height: screenHeight * 0.038891626,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffE78377),
                            borderRadius: BorderRadius.circular(
                              18.05,
                            ),
                          ),
                          child: const Text(
                            'Get offer now!',
                            style: TextStyle(
                              fontSize: 12.63,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Urbanist',
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Services',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Urbanist',
                            color: Color(0xff888888)),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Color(0xff888888),
                        size: screenWidth * 0.028
                        ,
                      )
                    ],
                  )
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Bookings',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Urbanist',
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'All Bookings',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Urbanist',
                            color: Color(0xff888888)),
                      ),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Color(0xff888888),
                        size: screenWidth * 0.028
                        ,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
