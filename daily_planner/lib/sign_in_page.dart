import 'package:daily_planner/sign_in_sign_up.dart';
import 'package:daily_planner/widgets/log_in_buttons.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Planner"),
        elevation: 0,
      ),
      backgroundColor: Colors.blue.shade100,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(
              height: 12,
            ),
            LoginButton(
              buttonText: "Sign in with Google",
              onPressed: () {},
              textColor: Colors.black87,
              buttonColor: Colors.white,
              buttonIcon: Image.asset("images/google_logo.png"),
            ),
            LoginButton(
              buttonText: "Sign in with Facebook",
              onPressed: () {},
              buttonColor: Color(0xFF334D92),
              buttonIcon: Image.asset("images/facebook_logo.png"),
            ),
            LoginButton(
              buttonText: "Sign in with e-mail and password",
              onPressed: () => _emailGirisKayit(context),
              buttonColor: Colors.blue.shade600,
              buttonIcon: Icon(
                Icons.email,
                size: 30,
              ),
            ),
            LoginButton(
              buttonText: "Guest",
              buttonColor: Colors.teal,
              onPressed: () {},
              buttonIcon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}

void _emailGirisKayit(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => emailGirisKayit(),
    ),
  );
}
