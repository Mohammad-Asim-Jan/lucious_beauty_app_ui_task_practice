import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/images_list.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/project_colors.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screenWidth(context);
    final screenHeight = ScreenSize.screenHeight(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.088 / 2),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.071428571),
            Column(
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
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ProjectColors.iconContainer1Color),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: screenHeight * 0.020270936,
                      ),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.023399015),
                const Text(
                  'Exclusive Offers',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Urbanist',
                  ),
                ),
                SizedBox(height: screenHeight * 0.007389163),
                Container(
                  height: screenHeight * 0.173362069,
                  width: screenWidth * 0.912,
                  decoration: BoxDecoration(
                    color: ProjectColors.mainColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Upto 50%',
                            style: TextStyle(
                                fontSize: 14.44,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Urbanist',
                                color: ProjectColors.reddishColor),
                          ),
                          Text(
                            'Look more beautiful and Save more discount.',
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 14.44,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Urbanist',
                                color: ProjectColors.whiteColor),
                          ),
                          Container(
                            width: screenWidth * 0.317626667,
                            height: screenHeight * 0.038891626,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ProjectColors.reddishColor,
                              borderRadius: BorderRadius.circular(
                                18.05,
                              ),
                            ),
                            child: Text(
                              'Get offer now!',
                              style: TextStyle(
                                fontSize: 12.63,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Urbanist',
                                color: ProjectColors.whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.037229064),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
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
                              color: ProjectColors.greyColor),
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: ProjectColors.greyColor,
                          size: screenWidth * 0.028,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.017241379),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.119458128,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ImagesList.serviceImages().length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: screenWidth * 0.04),
                        width: screenWidth * 0.237333333,
                        height: screenHeight * 0.119458128,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/services/${ImagesList.serviceImages()[index]}.png'),
                            ),
                            Text(
                              ImagesList.serviceImages()[index],
                              style: TextStyle(
                                color: ProjectColors.reddishColor,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.027093596),
                const Text(
                  'Feature Services',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Urbanist',
                  ),
                ),
                SizedBox(height: screenHeight * 0.017241379),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.108374384,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ImagesList.serviceImages().length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: screenWidth * 0.04),
                        width: screenWidth * 0.712,
                        height: screenHeight * 0.108374384
                        ,
                        decoration: BoxDecoration(
                          color: ProjectColors.whiteColor,
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        // child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Image(
                        //       image: AssetImage(
                        //           'assets/images/services/${ImagesList.serviceImages()[index]}.png'),
                        //     ),
                        //     Text(
                        //       ImagesList.serviceImages()[index],
                        //       style: TextStyle(
                        //         color: ProjectColors.reddishColor,
                        //         fontFamily: 'Urbanist',
                        //         fontWeight: FontWeight.w500,
                        //         fontSize: 16,
                        //       ),
                        //     )
                        //   ],
                        // ),
                      );
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.028325123),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
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
                              color: ProjectColors.greyColor),
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          color: ProjectColors.greyColor,
                          size: screenWidth * 0.028,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.024630542),
                Container(
                  width: screenWidth * 1,
                  height: screenHeight * 0.087438424,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ImagesList.serviceImages().length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: screenWidth * 0.04),
                        width: screenWidth *0.573333333,
                        height: screenHeight * 0.087438424,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        // child: Column(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Image(
                        //       image: AssetImage(
                        //           'assets/images/services/${ImagesList.serviceImages()[index]}.png'),
                        //     ),
                        //     Text(
                        //       ImagesList.serviceImages()[index],
                        //       style: TextStyle(
                        //         color: ProjectColors.reddishColor,
                        //         fontFamily: 'Urbanist',
                        //         fontWeight: FontWeight.w500,
                        //         fontSize: 16,
                        //       ),
                        //     )
                        //   ],
                        // ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
