import 'package:flutter/material.dart';
import 'package:tela_login_fteam/core/regx_email.dart';
import 'package:tela_login_fteam/modules/screen_acess/screen_acess.dart';
import 'package:tela_login_fteam/modules/screen_login/circle_check_login.dart';
import 'package:tela_login_fteam/modules/screen_registration/screen_registration.dart';
import 'package:tela_login_fteam/theme/color.dart';
import 'package:tela_login_fteam/widgets/generic_arrow_icon_button/generic_arrow_icon_button.dart';
import 'package:tela_login_fteam/widgets/generic_field/generic_field.dart';
import 'package:tela_login_fteam/widgets/generic_text/generic_text.dart';

class CardLoginWidget extends StatefulWidget {
  final String? hintText;
  const CardLoginWidget({Key? key, this.hintText}) : super(key: key);

  @override
  State<CardLoginWidget> createState() => _CardLoginWidgetState();
}

class _CardLoginWidgetState extends State<CardLoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var _keyAuth = GlobalKey<FormState>();
  bool chek = false;
  //

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: size.height * 0.60,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.001,
              ),
              GenericText(
                text: 'Welcome Back',
                color: ScreenColors.textPrimary,
                size: size.width * 0.055,
              ),
              SizedBox(
                height: size.height * 0.001,
              ),
              Form(
                key: _keyAuth,
                child: Column(
                  children: [
                    GenericField(
                      validation: (value) => RegexFunctions.email(value!),
                      controller: emailController,
                      hintText: 'E-mail',
                    ),
                    GenericField(
                        validation: (value) => RegexFunctions.password(value!),
                        controller: passwordController,
                        hintText: 'Password'),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.0001,
              ),
              CircleLoginCheck(),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    GenericText(
                      text: 'Sign Up',
                      color: ScreenColors.textPrimary,
                      size: size.width * 0.055,
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                    ),
                    GenericArrowButton(
                      onTap: () {
                        if (_keyAuth.currentState!.validate()) {
                          return Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ScreenAcess()),
                              ModalRoute.withName('/'));
                        }
                      },
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ScreenRegistration()),
                      ModalRoute.withName('/'));
                },
                child: GenericText(
                  text: 'Sign In',
                  color: ScreenColors.textPrimary,
                  size: size.width * 0.04,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
