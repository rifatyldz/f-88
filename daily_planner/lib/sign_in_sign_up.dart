
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
      body: Center(
        child: Text("form"),
      ),
    );
  }
}
