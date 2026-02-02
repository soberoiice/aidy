import 'package:flutter/material.dart';

class OtherRegisterOptionsWidget extends StatelessWidget {
  const OtherRegisterOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Or Continue with'),
        Container(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(double.infinity, 60.0),
              ),
              child: Icon(color: Colors.black, size: 40.0, Icons.apple),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(double.infinity, 60.0),
              ),
              child: Image.asset(height: 35.0, 'assets/images/google.png'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(double.infinity, 60.0),
              ),
              child: Image.asset(height: 35.0, 'assets/images/Facebook.png'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                fixedSize: Size(double.infinity, 60.0),
              ),
              child: Image.asset(height: 35.0, 'assets/images/X.png'),
            ),
          ],
        ),
      ],
    );
  }
}
