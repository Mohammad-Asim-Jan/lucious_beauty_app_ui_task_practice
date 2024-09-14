import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/views/home_view.dart';
import 'package:lucious_beauty_app_ui_task_practice/views/login_view.dart';
import 'package:lucious_beauty_app_ui_task_practice/views/register_view.dart';
import 'package:lucious_beauty_app_ui_task_practice/views/splash_view.dart';

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
        scaffoldBackgroundColor: const Color(0xfffaf8f6),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.black87),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xffdfdfdf),
            ),
          ),
          fillColor: const Color(0xfff5f5f5),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Color(0xffdfdfdf),
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
