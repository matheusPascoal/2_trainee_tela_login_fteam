import 'package:flutter/material.dart';
import 'package:tela_login_fteam/modules/screen_login/circle_check_login.dart';
import 'package:tela_login_fteam/modules/screen_registration/screen_cadastro.dart';
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
  @override
  bool chek = false;
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      color: Color.fromARGB(255, 255, 255, 255),
      elevation: 7,
      child: Container(
        height: size.height * 0.60,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              GenericText(
                text: 'Welcome Back',
                color: ScreenColors.textPrimary,
                size: 30,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              GenericField(controller: null, hintText: 'E-mail'),
              GenericField(controller: null, hintText: 'Password'),
              CircleLoginCheck(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    GenericText(
                      text: 'Sign Up',
                      color: ScreenColors.textPrimary,
                      size: size.width * 0.06,
                    ),
                    SizedBox(
                      width: size.width * 0.40,
                    ),
                    GenericArrowButton(
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ScreenCadastro()),
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
