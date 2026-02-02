import 'package:flutter/material.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  bool isPassHidden = true;
  bool? isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            'Joiny Aidy Today',
          ),
          Text(
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            'Get specialized study plans and more, sign up with your email to get started',
          ),
          Text(
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            "Email",
          ),
          TextField(
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: 'Enter passward',
              prefixIcon: Icon(Icons.email),
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
          Text(
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            "Passward",
          ),
          TextField(
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),

            obscureText: isPassHidden,
            decoration: InputDecoration(
              hintText: 'Enter passward',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  isPassHidden ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    isPassHidden = !isPassHidden;
                  });
                },
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox.adaptive(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Text(
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                'I agree with Aidys',
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  'Terms and Conditions',
                ),
              ),
            ],
          ),
          Container(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                'Already have an account?',
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  'signIn',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
