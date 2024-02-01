import "package:amazon_clone/constants/globalvariables.dart";
import "package:flutter/material.dart";

enum auth {
  singin,
  signup;
}

class Authscreen extends StatefulWidget {
  static const String routename = '/auth-screen';
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  auth _auth =auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: Text(
                "Create account.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: auth.signup,
                groupValue:_auth ,
                onChanged: (auth? val){
                  setState(() {
                    _auth=val!;
                  });
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
