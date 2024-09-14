
import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    double width = ScreenSize.screenWidth(context);
    double height = ScreenSize.screenHeight(context);

    return InkWell(
      onTap: onTap,
      child: Center(
        child: Container(
          width: width * 0.888,
          height: height * 0.061576355,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: const Color(0xffE78377)
          ),
          child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Urbanist'),),
        ),
      ),
    );
  }
}
