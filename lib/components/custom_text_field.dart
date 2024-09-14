import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.fontWeight = FontWeight.normal,
    this.keyboardType = TextInputType.text,
  });

  final String label;
  final String hint;
  final FontWeight fontWeight;
  final TextInputType keyboardType;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screenHeight(context) * 0.055418719,
      child: TextField(
        keyboardType: keyboardType,
        controller: textEditingController,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 14, fontFamily: 'Urbanist', fontWeight: fontWeight),
        ),
      ),
    );
  }
}
