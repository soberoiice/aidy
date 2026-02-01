import 'package:aidy/views/pages/account_setup_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPassHidden = true;
  bool? isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
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
                    controller: emailController,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Enter email",
                      suffixIcon: Icon(Icons.email),
                    ),
                    onEditingComplete: () => setState(() {}),
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
                    obscureText: isPassHidden,
                    controller: passController,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Enter passward",
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPassHidden
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isPassHidden = !isPassHidden;
                          });
                        },
                      ),
                    ),
                    onEditingComplete: () => setState(() {}),
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
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
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
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          'signIn',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
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
                      child: Image.asset(
                        height: 35.0,
                        'assets/images/google.png',
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(double.infinity, 60.0),
                      ),
                      child: Image.asset(
                        height: 35.0,
                        'assets/images/Facebook.png',
                      ),
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
            ),

            FilledButton(
              style: FilledButton.styleFrom(
                fixedSize: Size(double.infinity, 60.0),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AccountSetupPage();
                    },
                  ),
                );
              },
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
