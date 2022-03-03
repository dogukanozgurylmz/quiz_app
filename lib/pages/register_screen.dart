import 'package:flutter/material.dart';
import 'package:quizzapp/pages/home_page.dart';
import 'package:quizzapp/pages/sign_screen.dart';
import 'package:quizzapp/services/auth_services.dart';
import 'package:quizzapp/ui/color_constant.dart';
import 'package:quizzapp/ui/text_style.dart';
import 'package:quizzapp/widgets/email_text_field.dart';
import 'package:quizzapp/widgets/password_text_field.dart';
import '../widgets/username_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _userNameController;

  late FirebaseAuthService _firebaseAuthService;

  @override
  void initState() {
    _firebaseAuthService = FirebaseAuthService();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _userNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firebaseAuthService = FirebaseAuthService();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _userNameController = TextEditingController();
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
                      "Register",
                      style: UiTextStyle.heading1,
                    ),
                    Text(
                      "Create your account",
                      style: UiTextStyle.instance.bodyRegular,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    UsernameTextField(userNameController: _userNameController),
                    const SizedBox(
                      height: 20,
                    ),
                    EmailTextField(emailController: _emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    PasswordTextField(passwordController: _passwordController)
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(
                  height: 150,
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    "I have an account",
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
                          .createPerson(
                              _emailController.text.trim(),
                              _passwordController.text.trim(),
                              _userNameController.text.trim())
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage())));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: ColorConstant.instance.kGreen,
                      child: Center(
                        child: Text("Register",
                            style: UiTextStyle.instance.bodyBold.copyWith(
                                color: ColorConstant.instance.kWhite)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
