import 'package:careapp/presentation/controller/sign_in_controller.dart';
import 'package:careapp/presentation/widgets/custom_appbar.dart';
import 'package:careapp/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/route_string.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_text_feaild.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final SignInController signUpController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
                lable: "Forgot PassWord?",
                fun: () {},
                sizechange: size.width * 0.034,
                funfilter: () {},
                size: size),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Use your email to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColor.grey,
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 50),
            CustomTextFild(
              icon: AppImages.email,
              size: size,
              hint: "andrew89@care.com",
              controller: signUpController.forgotPassWord,
            ),
            const SizedBox(height: 30),
            CustomBtn(
                size: size,
                onClick: () {},
                btnName: "Reset Password",
                mediumMargin: true),
            SizedBox(height: size.height * 0.5),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteString.Sign_Up_SCREEN);
              },
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: TextStyle(
                      color: AppColor.grey, fontSize: size.width * 0.04),
                  children: const [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
