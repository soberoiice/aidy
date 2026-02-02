import 'package:aidy/views/pages/sign_in_page.dart';
import 'package:aidy/views/pages/sign_up_page.dart';
import 'package:aidy/views/widget_tree.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(height: 100.0, 'assets/images/logo.png'),
                Text(
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  'Lets Get Started',
                ),
                Text(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  'Lets dive into your account',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(color: Colors.black, size: 40.0, Icons.apple),
                      Text(
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        'Continue with Apple',
                      ),
                    ],
                  ),
                ),
                Container(height: 10.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(height: 35.0, 'assets/images/google.png'),
                      Container(width: 10.0),
                      Text(
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        'Continue with Google',
                      ),
                    ],
                  ),
                ),
                Container(height: 10.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(height: 35.0, 'assets/images/Facebook.png'),
                      Container(width: 10.0),
                      Text(
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        'Continue with facebook',
                      ),
                    ],
                  ),
                ),
                Container(height: 10.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(height: 35.0, 'assets/images/X.png'),
                      Container(width: 10.0),
                      Text(
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                        'Continue with x',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FilledButton(
                  style: FilledButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
                  },
                  child: Text('Sign up'),
                ),
                Container(height: 10.0),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(double.infinity, 60.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignInPage();
                        },
                      ),
                    );
                  },
                  child: Text('Sign in'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text('Privacy Policy')),
                TextButton(onPressed: () {}, child: Text('Privacy Policy')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
