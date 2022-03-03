import 'package:flutter/material.dart';

import '../ui/color_constant.dart';
import '../ui/text_style.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key? key,
    required TextEditingController userNameController,
  })  : _userNameController = userNameController,
        super(key: key);

  final TextEditingController _userNameController;

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
        controller: _userNameController,
        decoration: InputDecoration(
          labelText: "Your name",
          labelStyle: UiTextStyle.instance.bodyMedium,
          floatingLabelStyle: UiTextStyle.instance.bodyBold
              .copyWith(color: ColorConstant.instance.kGreen),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
