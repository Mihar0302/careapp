import 'package:careapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final Size size;
  final Function onClick;
  final String btnName;
  final bool mediumMargin;

  const CustomBtn({
    Key? key,
    required this.size,
    required this.onClick,
    required this.btnName,
    this.mediumMargin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
        margin: EdgeInsets.symmetric(
            horizontal: mediumMargin ? size.width * 0.05 : size.width * 0.12),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          btnName,
          style: TextStyle(
            color: AppColor.secondaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
