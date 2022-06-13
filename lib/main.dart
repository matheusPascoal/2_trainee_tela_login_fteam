import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tela_login_fteam/modules/screen_login/screen_login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenLogin(),
    ),
  );
}
