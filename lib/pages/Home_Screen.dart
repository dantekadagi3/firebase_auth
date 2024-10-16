//import 'package:flutter/foundation.dart';
import 'package:base2/pages/Widgets/button.dart';
import 'package:base2/pages/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Member",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                      onTab: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LogInPage()));
                      },
                      text: "Log In")
                ],
              ))),
    );
  }
}
