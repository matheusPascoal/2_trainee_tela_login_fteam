import 'package:flutter/material.dart';
import 'package:tela_login_fteam/core/regx_email.dart';
import 'package:tela_login_fteam/modules/screen_login/screen_login.dart';
import 'package:tela_login_fteam/modules/screen_registration/circle_check_registration.dart';
import 'package:tela_login_fteam/modules/screen_registration/screen_registration.dart';
import 'package:tela_login_fteam/theme/color.dart';
import 'package:tela_login_fteam/widgets/generic_arrow_icon_button/generic_arrow_icon_button.dart';
import 'package:tela_login_fteam/widgets/generic_field/generic_field.dart';
import 'package:tela_login_fteam/widgets/generic_text/generic_text.dart';

class CardRegistrationWidget extends StatefulWidget {
  final String? hintText;
  const CardRegistrationWidget({Key? key, this.hintText}) : super(key: key);

  @override
  State<CardRegistrationWidget> createState() => _CardRegistrationWidgetState();
}

class _CardRegistrationWidgetState extends State<CardRegistrationWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  var _keyAuth = GlobalKey<FormState>();
  bool chek = false;
  RegExp regExp =
      new RegExp("[a-z0-9]+@[a-z]+.[a-z]{2,3}", caseSensitive: false);
  //
  @override
  //

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: size.height * 0.62,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              GenericText(
                color: ScreenColors.textPrimary,
                size: size.width * 0.055,
                text: 'Get Started',
              ),
              Container(
                width: size.width * 0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.01,
                    ),
                    Form(
                      key: _keyAuth,
                      child: Column(
                        children: [
                          GenericField(
                            validation: (value) => RegexFunctions.name(value!),
                            controller: nameController,
                            hintText: 'Nome',
                          ),
                          GenericField(
                            validation: (value) => RegexFunctions.email(value!),
                            controller: emailController,
                            hintText: 'E-mail',
                          ),
                          GenericField(
                            validation: (value) =>
                                RegexFunctions.password(value!),
                            obscureText: true,
                            controller: passwordController,
                            hintText: 'Password',
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.01,
                    ),
                    CircleCheckRegistration(),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Sign Up',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 32, 6, 148),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width * 0.49,
                  ),
                  GenericArrowButton(
                    onTap: () {
                      if (_keyAuth.currentState!.validate()) {
                        return Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ScreenLogin()),
                            ModalRoute.withName('/'));
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
