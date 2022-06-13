import 'package:flutter/material.dart';

class CircleLoginCheck extends StatefulWidget {
  const CircleLoginCheck({Key? key}) : super(key: key);

  @override
  State<CircleLoginCheck> createState() => _CircleLoginCheckState();
}

class _CircleLoginCheckState extends State<CircleLoginCheck> {
  var isCheck = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isCheck = !isCheck;
              });
            },
            child: Icon(
              isCheck ? Icons.circle_outlined : Icons.circle,
              color: Colors.blue,
              size: 15,
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
            height: size.height * 0.03,
          ),
          Text(
            'I agree to the Terms of Service and Privacy Policy.',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
