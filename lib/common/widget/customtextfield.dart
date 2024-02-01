import "package:flutter/material.dart";
class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextfield({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          )
        ),
        enabledBorder: 
        OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          )
        ),
    ),
    validator:(val){

    } ,
      
    );
  }
}