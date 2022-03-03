import 'package:flutter/material.dart';
import 'package:quizzapp/pages/sign_screen.dart';
import 'package:quizzapp/ui/color_constant.dart';
import 'package:quizzapp/ui/text_style.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Flexible(
                flex: 6,
                child: Center(
                  child: Text(
                    "Quiz App",
                    style: UiTextStyle.heading1,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginPage()));
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: ColorConstant.instance.kGreen,
                      child: Center(
                        child: Text("Sign to your account",
                            style: UiTextStyle.instance.bodyBold.copyWith(
                                color: ColorConstant.instance.kWhite)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
