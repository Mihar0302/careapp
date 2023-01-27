import 'package:careapp/presentation/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/route_string.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_text_feaild.dart';
import '../../widgets/under_line.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset(AppImages.logo,
                height: size.height * 0.1, fit: BoxFit.fill),
            const SizedBox(height: 10),
            Text(
              AppString.care,
              style: TextStyle(
                  fontSize: size.width * 0.1, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: size.width * 0.96,
              child: Text(
                "Welcome Friend !",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * 0.049, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 2),
            Text(
              "To get started please register (no cost), and we’ll start your first session:",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor.grey,
                  fontSize: size.width * 0.047,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 40),
            CustomTextFild(
                icon: AppImages.email,
                size: size,
                hint: "Email",
                controller: signUpController.email),
            const SizedBox(height: 15),
            CustomTextFild(
                button:
                    InkWell(onTap: () {}, child: Image.asset(AppImages.eye)),
                icon: AppImages.lock,
                size: size,
                hint: "Password",
                controller: signUpController.password),
            const SizedBox(height: 25),
            CustomBtn(
                size: size,
                onClick: () {
                  Navigator.pushNamed(
                      context, RouteString.Sign_Up_CONFIRM_SCREEN);
                },
                btnName: "Sign Up",
                mediumMargin: true),
            SizedBox(
              height: size.height * 0.05,
            ),
            UnderLine(
              size: size,
            ),
            SizedBox(height: size.height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.apple,
                  height: 37,
                ),
                SizedBox(width: size.width * 0.08),
                Image.asset(
                  AppImages.google,
                  height: 37,
                ),
                SizedBox(width: size.width * 0.08),
                Image.asset(
                  AppImages.faceBook,
                  height: 37,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            InkWell(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  text: '',
                  style: TextStyle(
                      color: AppColor.grey, fontSize: size.width * 0.04),
                  children: const [
                    TextSpan(
                      text: 'Terms of Service and Privacy Policy',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
