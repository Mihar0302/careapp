import 'package:careapp/presentation/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';

class SignUpConfirmScreen extends StatelessWidget {
  const SignUpConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Image.asset(AppImages.logo,
                  height: size.height * 0.1, fit: BoxFit.fill),
              const SizedBox(height: 10),
              Text(
                AppString.care,
                style: TextStyle(
                  fontSize: size.width * 0.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 150),
              SizedBox(
                width: size.width * 0.8,
                child: Text(
                  "Thank you for registering ! Let’s set up your first session",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColor.grey,
                      fontSize: size.width * 0.047,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20),
              CustomBtn(
                size: size,
                onClick: () {},
                btnName: "Let’s begin",
                mediumMargin: true,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
