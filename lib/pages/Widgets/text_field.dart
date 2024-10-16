import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController texteditingController;
  final bool isPass;
  final String hintText;
  final IconData icon;

  const TextFieldInput(
    
    {
        super.key,
        required this.texteditingController,
        required this.hintText,
        
         this.isPass=false,
        required this.icon,
     
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: isPass,
          controller: texteditingController,
          decoration: InputDecoration(
              prefixIcon:  Icon(
                icon,
                color: Colors.black45,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              border: InputBorder.none,
              filled: true,
              fillColor: const Color(0xFFedf0f8),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.circular(30),
              ))),
    );
  }
}
