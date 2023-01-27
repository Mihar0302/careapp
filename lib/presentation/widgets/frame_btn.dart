import 'package:careapp/utils/app_image.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class FrameBtn extends StatelessWidget {
  final Size size;
  final Function onClick;
  final String btnName;

  const FrameBtn(
      {Key? key,
      required this.size,
      required this.onClick,
      required this.btnName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        alignment: Alignment.center,
        height: 46,
        width: size.width,
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AppImages.Frame,
            ),
          ),
        ),
        child: Text(
          btnName,
          style: TextStyle(
              fontSize: size.width * 0.04, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
