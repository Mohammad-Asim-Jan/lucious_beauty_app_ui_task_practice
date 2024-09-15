import 'package:flutter/material.dart';
import 'package:lucious_beauty_app_ui_task_practice/components/custom_button.dart';
import 'package:lucious_beauty_app_ui_task_practice/components/custom_text_field.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/project_colors.dart';
import 'package:lucious_beauty_app_ui_task_practice/constants/screen_size.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController emailAddressC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenSize.screenWidth(context);
    final screenHeight = ScreenSize.screenHeight(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.051724138,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.116995074,
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 0.215517241,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login/amico.png'),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.051724138,
              ),
              // SizedBox(height: ,),
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Iowan',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.043103448,
              ),
              CustomTextField(
                label: 'Name',
                hint: 'Enter name...',
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: screenHeight * 0.027093596,
              ),
              CustomTextField(
                label: 'Email',
                hint: 'Enter email...',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: screenHeight * 0.027093596,
              ),
              CustomTextField(
                label: 'Email Address',
                hint: 'Enter email address...',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: screenHeight * 0.027093596,
              ),
              CustomTextField(
                label: 'Password',
                hint: 'Enter password...',
              ),
              SizedBox(
                height: screenHeight * 0.043103448,
              ),
              CustomButton(title: 'Register', onTap: () {}),
              SizedBox(
                height: screenHeight * 0.027093596,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have Account ? ',
                    style: TextStyle(
                      color: ProjectColors.text2Color,
                      fontFamily: 'Urbanist',
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: ProjectColors.reddishColor,
                      fontFamily: 'Urbanist',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
