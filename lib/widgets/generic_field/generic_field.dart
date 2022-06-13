import 'package:flutter/material.dart';

class GenericField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  const GenericField(
      {Key? key, this.hintText, this.controller, this.validation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextFormField(
          validator: validation,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText!,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
