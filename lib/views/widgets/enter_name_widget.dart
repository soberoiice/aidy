import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterNameWidget extends StatelessWidget {
  const EnterNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                'What is Your Name ?',
              ),
              Text(
                style: TextStyle(fontSize: 15.0),
                'We would love to know what to call you ?',
              ),
            ],
          ),
          Center(
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),

              decoration: InputDecoration(
                hintText: 'Name',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 12,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 206, 206, 206),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
