import 'package:careapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTabs extends StatelessWidget {
  final int index;
  final Size size;

  const CustomTabs({Key? key, required this.size, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: index == 0 ? AppColor.primaryColor : AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: size.width * 0.02),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: index == 1 ? AppColor.primaryColor : AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: size.width * 0.02),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: index == 2 ? AppColor.primaryColor : AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: size.width * 0.02),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: index == 3 ? AppColor.primaryColor : AppColor.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
