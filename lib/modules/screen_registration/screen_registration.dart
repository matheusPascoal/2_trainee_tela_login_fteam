import 'package:flutter/material.dart';
import 'package:tela_login_fteam/core/image_fundo.dart';
import 'package:tela_login_fteam/modules/screen_registration/card_registration_widget.dart';

class ScreenRegistration extends StatefulWidget {
  const ScreenRegistration({Key? key}) : super(key: key);

  @override
  State<ScreenRegistration> createState() => _ScreenRegistrationState();
}

class _ScreenRegistrationState extends State<ScreenRegistration> {
  late ImageFundo imagefundo;
  @override
  void initState() {
    super.initState();
  }

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
                "assets/fundo.png",
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
