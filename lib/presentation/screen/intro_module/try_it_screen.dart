import 'package:careapp/presentation/controller/global_controller.dart';
import 'package:careapp/presentation/widgets/frame_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/route_string.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_tabs.dart';

class TryItScreen extends StatefulWidget {
  const TryItScreen({Key? key}) : super(key: key);

  @override
  State<TryItScreen> createState() => _TryItScreenState();
}

class _TryItScreenState extends State<TryItScreen> {
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
        child: SingleChildScrollView(
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
              const SizedBox(height: 25),
              SizedBox(
                width: size.width * 0.96,
                child: Text(
                  "CARE is a four-step mindfulness tool centered on the words:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.width * 0.049,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20),
              FrameBtn(size: size, btnName: "CONSIDER", onClick: () {}),
              const SizedBox(height: 7),
              FrameBtn(size: size, btnName: "APPRECIATE", onClick: () {}),
              const SizedBox(height: 7),
              FrameBtn(size: size, btnName: "EXPERIENCE", onClick: () {}),
              const SizedBox(height: 7),
              FrameBtn(size: size, btnName: "RECOGNIZE", onClick: () {}),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.96,
                child: Text(
                  "After each mindfulness session, your thoughts are renewed. "
                  "Each session you complete builds on the last one to create an active mindfulness practice.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.width * 0.047,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 30),
              CustomTabs(size: size, index: global.introTab.value),
              const SizedBox(height: 20),
              CustomBtn(
                  size: size,
                  onClick: () {
                    Navigator.pushReplacementNamed(
                        context, RouteString.SIGNIN_SCREEN);
                  },
                  btnName: AppString.tryIt),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
