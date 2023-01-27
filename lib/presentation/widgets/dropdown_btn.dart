import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class DropDownBtn extends StatelessWidget {
  final Function onClick;
  final String btnName;
  final bool up;
  final Size size;
  final String icon;

  const DropDownBtn(
      {Key? key,
      required this.onClick,
      required this.btnName,
      required this.up,
      required this.size,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
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
        child: Row(
          children: [
            Image.asset(icon, height: 27, width: 30),
            SizedBox(width: size.width * 0.03),
            Text(
              btnName,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: size.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
