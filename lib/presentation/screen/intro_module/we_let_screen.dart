import 'package:careapp/presentation/controller/global_controller.dart';
import 'package:careapp/presentation/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/route_string.dart';
import '../../widgets/custom_tabs.dart';

class WeLetScreen extends StatefulWidget {
  const WeLetScreen({Key? key}) : super(key: key);

  @override
  State<WeLetScreen> createState() => _WeLetScreenState();
}

class _WeLetScreenState extends State<WeLetScreen> {
  final GlobalController global = Get.find();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
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
            const SizedBox(height: 100),
            Image.asset(AppImages.logo,
                height: size.height * 0.1, fit: BoxFit.fill),
            const SizedBox(height: 10),
            Text(
              AppString.care,
              style: TextStyle(
                  fontSize: size.width * 0.1, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 50),
            Text(
              "We let you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.width * 0.055,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: size.width * 0.96,
              child: Text(
                AppString.weLet,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * 0.049, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(child: Container()),
            CustomTabs(size: size, index: global.introTab.value),
            const SizedBox(height: 10),
            CustomBtn(
                size: size,
                onClick: () {
                  global.introTab.value = 3;
                  Navigator.pushNamed(context, RouteString.TRYIT_SCREEN);
                },
                btnName: AppString.next),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, RouteString.SIGNIN_SCREEN);
              },
              child: Text(
                AppString.skipIntro,
                style: TextStyle(
                  fontSize: size.width * 0.042,
                  color: AppColor.secondaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
