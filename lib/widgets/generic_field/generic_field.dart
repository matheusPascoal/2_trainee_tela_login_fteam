import 'package:flutter/material.dart';

class GenericField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final bool obscureText;
  const GenericField(
      {Key? key,
      this.hintText,
      this.controller,
      this.validation,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.11,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: TextFormField(
          obscureText: obscureText,
          validator: validation,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText!,
            hintStyle: TextStyle(fontSize: size.width * 0.038),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
