import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/views/home_view.dart';

import 'constants/project_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: const MaterialColor(
        //   0xffE78377, // Base color
        //   <int, Color>{
        //     50: Color(0xFFF9E6E2), // Lightest shade
        //     100: Color(0xFFF4D1C7),
        //     200: Color(0xFFEBAA9B),
        //     300: Color(0xFFE28F7D),
        //     400: Color(0xFFD87D6C),
        //     500: Color(0xffE78377), // Base color
        //     600: Color(0xFFD16D5F),
        //     700: Color(0xFFBF6454),
        //     800: Color(0xFFAD5B49),
        //     900: Color(0xFF8A3F36), // Darkest shade
        //   },
        // ),
        scaffoldBackgroundColor: ProjectColors.bgColor,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: ProjectColors.blackColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              width: 1,
              color: ProjectColors.textFieldBorderColor,
            ),
          ),
          fillColor: ProjectColors.textFieldFillColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(
              color: ProjectColors.textFieldBorderColor,
              width: 2,
            ),
          ),
          filled: true,
        ),
        // useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
