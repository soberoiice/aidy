import 'package:aidy/views/widgets/other_register_options_widget.dart';
import 'package:flutter/material.dart';

class SigninFormWidget extends StatefulWidget {
  const SigninFormWidget({super.key});

  @override
  State<SigninFormWidget> createState() => _SigninFormWidgetState();
}

class _SigninFormWidgetState extends State<SigninFormWidget> {
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
            'Welcome Back!',
          ),
          Text(
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            'Access your oersonalized study plans and continue learning',
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                    'Remember me',
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  'Forgot Passward?',
                ),
              ),
            ],
          ),
          OtherRegisterOptionsWidget(),
        ],
      ),
    );
  }
}
