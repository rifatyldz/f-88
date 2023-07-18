import 'package:daily_planner/sign_in_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily-planner",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}


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
              onPressed: () {},
              buttonColor: Colors.blue.shade600,
              buttonIcon: Icon(
                Icons.email,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}