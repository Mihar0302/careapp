import 'package:careapp/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFild extends StatelessWidget {
  final String icon;
  final Size size;
  final String hint;
  final bool whit;
  final bool cngsize;
  final bool margin;
  final bool max;
  final bool obsertext;
  final TextEditingController controller;
  final Function? onChange;
  final Widget? button;
  final bool numberKeyboard;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType? inputType;

  const CustomTextFild({
    Key? key,
    required this.size,
    required this.hint,
    required this.controller,
    this.whit = false,
    this.cngsize = false,
    this.margin = false,
    this.onChange,
    this.max = false,
    this.obsertext = false,
    this.button,
    this.numberKeyboard = false,
    this.inputFormatter,
    this.inputType,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: size.height * 0.001,
        bottom: size.height * 0.001,
        left: size.width * 0.04,
        right: size.width * 0.04,
      ),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey.withOpacity(0.5), width: 2),
        borderRadius: BorderRadius.circular(70),
        color: AppColor.grey.withOpacity(0.12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(icon),
          SizedBox(width: size.width * 0.02),
          Expanded(
            child: TextField(
              autofocus: false,
              autocorrect: true,
              autofillHints: const [AutofillHints.countryCode],
              keyboardType: numberKeyboard
                  ? TextInputType.number
                  : TextInputType.emailAddress,
              inputFormatters: inputFormatter,
              obscureText: obsertext,
              maxLines: 1,
              textAlign: TextAlign.start,
              controller: controller,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              onChanged: (String value) {
                if (onChange != null) {
                  onChange!();
                }
              },
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          if (button != null) button!,
        ],
      ),
    );
  }
}
