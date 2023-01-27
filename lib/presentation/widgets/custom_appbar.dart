import 'package:careapp/utils/app_color.dart';
import 'package:careapp/utils/app_image.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String lable;
  final Function fun;
  final Function funfilter;
  final bool changimg;
  final double sizechange;
  final bool filter;
  final bool widget;
  final Widget? child;
  final Size size;

  const CustomAppbar({
    Key? key,
    required this.lable,
    required this.fun,
    this.changimg = true,
    required this.sizechange,
    this.filter = false,
    required this.funfilter,
    this.widget = false,
    this.child,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 15,
            bottom: 12,
            left: size.width * 0.03),
        child: Row(
          children: [
            Icon(
              Icons.keyboard_arrow_left_outlined,
              size: size.width * 0.082,
            ),
            Text(
              lable,
              style: TextStyle(
                fontSize: size.width * 0.043,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ));
  }
}
