import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geulis_digitalk/theme/color.dart';
import 'package:geulis_digitalk/widgets/resigter_text_field.dart';
import 'package:geulis_digitalk/widgets/text_field_password.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _isObscure = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    fontSize: 25,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Hello there, please create new account",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 170,
                  height: 180,
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
              const ResigterTextField(
                hintText: "Username",
              ),
              const SizedBox(
                height: 15,
              ),
              const ResigterTextField(
                hintText: "Email",
              ),
              const SizedBox(
                height: 15,
              ),
              const ResigterTextField(
                hintText: "Phone Number",
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldPassword(isObscure: _isObscure),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      side: BorderSide(color: textFieldColor),
                      activeColor: textColor,
                      value: _isChecked,
                      onChanged: (_) => setState(
                        () {
                          _isChecked = !_isChecked;
                        },
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("By creating an account you agree to our"),
                      Text(
                        "Term and Conditions",
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: buttonColor),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Have Account?",
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(color: textColor, fontSize: 17),
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
