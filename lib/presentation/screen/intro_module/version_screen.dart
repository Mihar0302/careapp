import 'package:careapp/presentation/widgets/custom_btn.dart';
import 'package:careapp/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/route_string.dart';
import '../../controller/global_controller.dart';
import '../../widgets/custom_tabs.dart';

class VersionScreen extends StatefulWidget {
  const VersionScreen({Key? key}) : super(key: key);

  @override
  State<VersionScreen> createState() => _VersionScreenState();
}

class _VersionScreenState extends State<VersionScreen> {
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
              SizedBox(height: size.height * 0.1),
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
                AppString.welCome,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.width * 0.055, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: size.width * 0.9,
                child: Text(
                  AppString.version,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: size.width * 0.049,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: size.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.glass),
                        SizedBox(width: size.width * 0.02),
                        Text(
                          AppString.betaVersion,
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: AppColor.secondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: size.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.secondaryColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      AppString.free,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: size.width * 0.036,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 65),
              CustomTabs(size: size, index: global.introTab.value),
              const SizedBox(height: 20),
              CustomBtn(
                  size: size,
                  onClick: () {
                    global.introTab.value = 1;
                    Navigator.pushNamed(context, RouteString.HELP_SCREEN);
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
      ),
    );
  }
}
