import 'package:flutter/material.dart';
import 'package:tela_login_fteam/theme/color.dart';

class GenericArrowButton extends StatelessWidget {
  final Function()? onTap;
  const GenericArrowButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Icon(
        Icons.arrow_circle_right,
        size: size.width * 0.19,
        color: ScreenColors.primary,
      ),
    );
  }
}
