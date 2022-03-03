import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:quizzapp/services/auth_services.dart';
import 'package:quizzapp/ui/color_constant.dart';
import 'package:quizzapp/pages/register_screen.dart';
import 'package:quizzapp/ui/text_style.dart';

import '../widgets/email_text_field.dart';
import '../widgets/password_text_field.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  late FirebaseAuthService _firebaseAuthService;
  @override
  void initState() {
    _firebaseAuthService = FirebaseAuthService();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: ColorConstant.instance.kWhite,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                  child: SizedBox(
                height: 100,
              )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: UiTextStyle.heading1,
                    ),
                    Text(
                      "Sign to your account",
                      style: UiTextStyle.instance.bodyRegular,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    EmailTextField(emailController: _emailController),
                    PasswordTextField(passwordController: _passwordController),
                    Text(
                      "Forgot Password",
                      style: UiTextStyle.instance.bodyBold,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                        color: ColorConstant.instance.kGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: ColorConstant.instance.kWhite,
                          ),
                          Text(
                            "Google ile giriş yap",
                            style: UiTextStyle.instance.bodyBold
                                .copyWith(color: ColorConstant.instance.kWhite),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  height: 15,
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: Text(
                    "I don't have account",
                    style: UiTextStyle.instance.bodyBold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      _firebaseAuthService
                          .signIn(_emailController.text.trim(),
                              _passwordController.text.trim())
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage())));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: ColorConstant.instance.kGreen,
                      child: Center(
                        child: Text("Login",
                            style: UiTextStyle.instance.bodyBold.copyWith(
                                color: ColorConstant.instance.kWhite)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
