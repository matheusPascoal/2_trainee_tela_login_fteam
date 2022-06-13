import 'package:flutter/material.dart';
import 'package:tela_login_fteam/modules/screen_registration/circle_check_registration.dart';
import 'package:tela_login_fteam/modules/screen_registration/screen_cadastro.dart';
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
                height: size.height * 0.02,
              ),
              GenericText(
                color: ScreenColors.textPrimary,
                size: 30,
                text: 'Get Started',
              ),
              Container(
                width: size.width * 0.9,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.02,
                    ),
                    GenericField(
                      controller: null,
                      hintText: 'Nome',
                    ),
                    GenericField(
                      controller: null,
                      hintText: 'E-mail',
                    ),
                    GenericField(
                      controller: null,
                      hintText: 'Password',
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
                    onTap: () {},
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenCadastro()),
                  );
                },
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromARGB(255, 32, 6, 148),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
