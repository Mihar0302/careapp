import 'package:careapp/presentation/controller/global_controller.dart';
import 'package:careapp/utils/app_image.dart';
import 'package:careapp/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/route_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GlobalController global = Get.put(GlobalController());

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (_) async {
        global.introTab.value = 0;
        Navigator.pushReplacementNamed(context, RouteString.VERSION_SCREEN);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFFFFFF),
              Color(0xffDCE8FF),
              Color(0xffB4CEFF),
              Color(0xff7AA8FF),
              Color(0xff7AA8FF),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppImages.logo,
                height: size.height * 0.1, fit: BoxFit.fill),
            const SizedBox(height: 10),
            Text(
              AppString.care,
              style: TextStyle(
                  fontSize: size.width * 0.1, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.8,
              child: Text(
                AppString.splash,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * 0.049, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 440,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.logoBlue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
