import 'package:careapp/presentation/controller/global_controller.dart';
import 'package:careapp/presentation/widgets/custom_btn.dart';
import 'package:careapp/presentation/widgets/drop_down_msg.dart';
import 'package:careapp/presentation/widgets/dropdown_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_image.dart';
import '../../../utils/app_string.dart';
import '../../../utils/route_string.dart';
import '../../widgets/custom_tabs.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  GlobalController global = Get.find();

  @override
  void initState() {
    global.helpShow.value = 0;
    super.initState();
  }

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
            children: [
              SizedBox(height: size.height * 0.1),
              Image.asset(
                AppImages.logo,
                height: size.height * 0.1,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 10),
              Text(
                AppString.care,
                style: TextStyle(
                  fontSize: size.width * 0.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 37),
              Text(
                AppString.weHelpYouWith,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Obx(
                () => global.helpShow.value == 1
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 1;
                        },
                        btnName: "Overcome negative thoughts",
                        up: true,
                        size: size,
                        icon: AppImages.windone),
              ),
              const SizedBox(height: 6),
              Obx(
                () => global.helpShow.value == 2
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 2;
                        },
                        btnName: "Resolving feelings or emotions",
                        up: true,
                        size: size,
                        icon: AppImages.moon),
              ),
              const SizedBox(height: 6),
              Obx(
                () => global.helpShow.value == 3
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 3;
                        },
                        btnName: "Coping with people or situations",
                        up: true,
                        size: size,
                        icon: AppImages.wind),
              ),
              const SizedBox(height: 6),
              Obx(
                () => global.helpShow.value == 4
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 4;
                        },
                        btnName: "Increasing joy and happiness",
                        up: true,
                        size: size,
                        icon: AppImages.sun),
              ),
              const SizedBox(height: 6),
              Obx(
                () => global.helpShow.value == 5
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 5;
                        },
                        btnName: "Improving daily mindfulness",
                        up: true,
                        size: size,
                        icon: AppImages.icon),
              ),
              const SizedBox(height: 6),
              Obx(
                () => global.helpShow.value == 6
                    ? DropDownMsg(
                        size: size,
                        icon: AppImages.windone,
                        title: "Overcome negative thoughts",
                        text: "Lorem ipsum dolor sit amet consectetur. "
                            "Semper rhoncus etiam amet etiam sed etiam consectetur ipsum. In vulputate pellentesque "
                            "risus varius fames ipsum elementum. Turpis sed vestibulum et velit eleifend.")
                    : DropDownBtn(
                        onClick: () {
                          global.helpShow.value = 6;
                        },
                        btnName: "Optimizing thinking",
                        up: true,
                        size: size,
                        icon: AppImages.cloud),
              ),
              const SizedBox(height: 15),
              CustomTabs(size: size, index: global.introTab.value),
              const SizedBox(height: 15),
              CustomBtn(
                  size: size,
                  onClick: () {
                    global.introTab.value = 2;
                    Navigator.pushNamed(context, RouteString.WELET_SCREEN);
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
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
