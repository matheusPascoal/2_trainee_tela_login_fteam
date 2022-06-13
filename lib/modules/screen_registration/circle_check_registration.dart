import 'package:flutter/material.dart';

class CircleCheckRegistration extends StatefulWidget {
  const CircleCheckRegistration({Key? key}) : super(key: key);

  @override
  State<CircleCheckRegistration> createState() =>
      _CircleCheckRegistrationState();
}

class _CircleCheckRegistrationState extends State<CircleCheckRegistration> {
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
            'Remember-me',
            style: TextStyle(fontSize: 12),
          ),
          TextButton(onPressed: () {}, child: Text('Forgot Password'))
        ],
      ),
    );
  }
}
