import "package:flutter/material.dart";

class Custombutton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const Custombutton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: ontap,
      style: ElevatedButton.styleFrom(minimumSize: const Size(500, 50)),
    );
  }
}
