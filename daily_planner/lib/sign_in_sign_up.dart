import 'package:daily_planner/widgets/log_in_buttons.dart';
import 'package:flutter/material.dart';

class emailGirisKayit extends StatefulWidget {
  const emailGirisKayit({super.key});

  @override
  State<emailGirisKayit> createState() => _emailGirisKayitState();
}

class _emailGirisKayitState extends State<emailGirisKayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in / Sign up"),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 16),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key),
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height:12),

              LoginButton(buttonText:"Sign in or Sign Up", buttonIcon: Icon(Icons.arrow_forward), onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
