import 'package:flutter/material.dart';
import '../../utils/app_color.dart';

class DropDownMsg extends StatelessWidget {
  final Size size;
  final String icon;
  final String title;
  final String text;

  const DropDownMsg(
      {Key? key,
      required this.size,
      required this.icon,
      required this.title,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: EdgeInsets.only(
          top: size.height * 0.014,
          bottom: size.height * 0.014,
          left: size.width * 0.07),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(icon,
                  height: 27, width: 30, color: AppColor.primaryColor),
              SizedBox(width: size.width * 0.03),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: size.width * 0.04,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(width: size.width * 0.1),
              Icon(
                Icons.keyboard_arrow_up_rounded,
                color: AppColor.primaryColor,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.04, top: 10),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: size.width * 0.038,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
