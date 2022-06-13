import 'dart:ui';

import 'package:flutter/material.dart';

class GenericText extends StatelessWidget {
  final String? text;
  final String? Secondarytext;
  final double? size;
  final Color? color;
  const GenericText(
      {Key? key, this.text, this.size, this.color, this.Secondarytext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text!,
            style: TextStyle(
              fontSize: size!,
              color: color!,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
