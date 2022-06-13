import 'package:flutter/material.dart';
import 'package:tela_login_fteam/modules/screen_registration/card_registration_widget.dart';


class ScreenCadastro extends StatefulWidget {
  const ScreenCadastro({Key? key}) : super(key: key);

  @override
  State<ScreenCadastro> createState() => _ScreenCadastroState();
}

class _ScreenCadastroState extends State<ScreenCadastro> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                'assets/fundoo.PNG',
                fit: BoxFit.cover,
                width: size.width * 1,
                height: size.height * 0.4,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CardRegistrationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
