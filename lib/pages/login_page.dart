import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/register_text_field.dart';
import 'package:geulis_digitalk/widgets/sign_in_icon.dart';
import 'package:geulis_digitalk/widgets/text_field_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 37),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to us,",
                style: TextStyle(
                    fontSize: 30,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Hello there, please login with your account",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/register_icon.png"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const RegisterTextField(
                hintText: "Username",
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldPassword(isObscure: _isObscure),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 15, color: forgotPasswordColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/navpage');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "Or Sign in With",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInIcon(imageUrl: "assets/images/goggle_icon.png"),
                  SizedBox(
                    width: 15,
                  ),
                  SignInIcon(imageUrl: "assets/images/facebook_icon.png")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 270,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 17),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/registerpage');
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: textColor, fontSize: 17),
                        ),
                      )
                    ],
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
