
import 'package:flutter/material.dart';

import '../ui/color_constant.dart';
import '../ui/text_style.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController, super(key: key);

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 28),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      width: 360,
      decoration: BoxDecoration(
          color: ColorConstant.instance.kGrey,
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: ColorConstant.instance.kGreen,
          ),
          labelText: "Password",
          labelStyle: UiTextStyle.instance.bodyMedium,
          floatingLabelStyle: UiTextStyle.instance.bodyBold
              .copyWith(color: ColorConstant.instance.kGreen),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

