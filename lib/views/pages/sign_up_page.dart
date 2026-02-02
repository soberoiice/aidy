import 'package:aidy/views/pages/account_setup_page.dart';
import 'package:aidy/views/widgets/other_register_options_widget.dart';
import 'package:aidy/views/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            Column(
              children: [
                SignupFormWidget(),
                OtherRegisterOptionsWidget()
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
