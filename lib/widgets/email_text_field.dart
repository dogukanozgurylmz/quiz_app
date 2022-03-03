
import 'package:flutter/material.dart';

import '../ui/color_constant.dart';
import '../ui/text_style.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required TextEditingController emailController,
  }) : _emailController = emailController, super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          color: ColorConstant.instance.kGrey,
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: "Your email",
          labelStyle: UiTextStyle.instance.bodyMedium,
          floatingLabelStyle: UiTextStyle.instance.bodyBold
              .copyWith(color: ColorConstant.instance.kGreen),
          border: InputBorder.none,
        ),
      ),
    );
  }
}