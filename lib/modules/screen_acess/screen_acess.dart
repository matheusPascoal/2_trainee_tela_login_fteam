import 'package:flutter/material.dart';
import 'package:tela_login_fteam/theme/color.dart';

class ScreenAcess extends StatefulWidget {
  const ScreenAcess({Key? key}) : super(key: key);

  @override
  State<ScreenAcess> createState() => _ScreenAcessState();
}

class _ScreenAcessState extends State<ScreenAcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('TELA DE ACESSO'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'SUCESSO!!!',
                style: TextStyle(color: ScreenColors.text, fontSize: 60),
              ),
            )
          ],
        ));
  }
}
