import 'package:flutter/material.dart';
import 'package:juw_services/constants/utils.dart';
import 'package:juw_services/views/button.dart';
import 'package:juw_services/views/textform.dart';

class Login extends StatelessWidget {
  Login({
    super.key,
  });
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double verticalMargin = screenHeight * 0.2;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: verticalMargin),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(Color1.browncolor),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormGlobal(
                        controller: emailController,
                        text: 'Email',
                        textInputType: TextInputType.emailAddress,
                        obscure: false),
                    SizedBox(
                      height: 6,
                    ),
                    TextFormGlobal(
                        controller: passwordController,
                        text: 'Password',
                        textInputType: TextInputType.emailAddress,
                        obscure: true),
                    SizedBox(
                      height: screenHeight * 0.04, // Adjust the spacing
                    ),
                    ButtonGlobal(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
