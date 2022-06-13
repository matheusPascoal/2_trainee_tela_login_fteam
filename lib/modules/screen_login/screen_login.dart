import 'package:flutter/material.dart';
import 'package:tela_login_fteam/modules/screen_login/card_login_widget.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
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
                'assets/fundoo.PNG',
                fit: BoxFit.cover,
                width: size.width * 1,
                height: size.height * 0.4,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CardLoginWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
