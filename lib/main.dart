import 'package:face_book/pages/facebooklogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Login());
}
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.activeBlue,
          foregroundColor: Colors.white,
          title: Text("𝗳𝗮𝗰𝗲𝗯𝗼𝗼𝗸",style: TextStyle(fontSize: 36),),
        ),
        body: Facelogin(),
      ),
    );
  }
}
