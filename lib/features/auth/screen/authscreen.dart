import "package:amazon_clone/common/widget/custom_button.dart";
import "package:amazon_clone/common/widget/customtextfield.dart";
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
  auth _auth = auth.singin;
  final _signupformkey = GlobalKey<FormState>();
  final _signinformkey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            ListTile(
              title: const Text(
                "Create account.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: auth.signup,
                groupValue: _auth,
                onChanged: (auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                child: Form(
                  key: _signinformkey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        controller: _namecontroller,
                        hintText: "Name",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        controller: _emailcontroller,
                        hintText: "Email",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        controller: _passwordcontroller,
                        hintText: "Password",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Custombutton(text: "Sign-up", ontap: () {})
                    ],
                  ),
                ),
              ),
            ListTile(
              title: const Text(
                "sign in .",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: auth.singin,
                groupValue: _auth,
                onChanged: (auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == auth.singin)
              Container(
                padding: const EdgeInsets.all(8),
                child: Form(
                  key: _signinformkey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        controller: _emailcontroller,
                        hintText: "Email",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        controller: _passwordcontroller,
                        hintText: "Password",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Custombutton(text: "Sign-in", ontap: () {})
                    ],
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
