import 'package:base2/pages/Home_Screen.dart';
import 'package:base2/pages/Widgets/button.dart';
import 'package:base2/pages/Widgets/snack_bar.dart';
import 'package:base2/pages/Widgets/text_field.dart';
import 'package:base2/pages/login_page.dart';
import 'package:base2/services/authentication.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();
  bool isLoading = false;
  void signUpUser() async {
    String res = await AuthService().signUpUser(
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );

    //if signup is successful user has been created and may navigate to the next screen
    //otherwise show the error message
    if (res == "success") {
      setState(() {
        isLoading = true;
        //navigate to the next screen
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    } else {
      setState(() {
        isLoading = false;
      });
      //show the error message
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: height / 2.7,
              child: Image.asset("images/sign.jpeg"),
            ),

            TextFieldInput(
                texteditingController: nameController,
                hintText: "Enter your name",
                icon: Icons.person),

            //textfields
            TextFieldInput(
                texteditingController: emailController,
                hintText: "Enter your email",
                icon: Icons.email),

            TextFieldInput(
                texteditingController: passwordController,
                hintText: "Enter your password",
                icon: Icons.lock),

            MyButton(
                onTab: () {
                  signUpUser();
                },
                text: "SignUp"),
            SizedBox(
              height: height / 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LogInPage()));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
