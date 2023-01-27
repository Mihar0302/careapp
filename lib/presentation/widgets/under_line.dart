import 'package:careapp/utils/app_color.dart';
import 'package:flutter/material.dart';

class UnderLine extends StatelessWidget {
  final Size size;

  const UnderLine({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2,
          width: size.width * 0.4,
          color: AppColor.grey.withOpacity(0.4),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Text(
          "Or",
          style: TextStyle(
            color: AppColor.grey.withOpacity(0.4),
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        ),
        Container(
            height: 2,
            width: size.width * 0.4,
            color: AppColor.grey.withOpacity(0.4)),
      ],
    );
  }
}
