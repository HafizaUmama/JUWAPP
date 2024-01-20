import 'package:flutter/material.dart';
import 'package:juw_services/constants/utils.dart';

class ButtonGlobal extends StatelessWidget {
  const ButtonGlobal({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'SignUp');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: Color(Color1.browncolor),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Color1.blackcolor.withOpacity(0.1), blurRadius: 10)
            ]),
        child: Text(
          'Sign In',
          style: TextStyle(color: Color1.whitecolor, fontSize: 20),
        ),
      ),
    );
  }
}

class SignUpbutton extends StatelessWidget {
  const SignUpbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, 'Login');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: Color(Color1.browncolor),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Color1.blackcolor.withOpacity(0.1), blurRadius: 10)
            ]),
        child: Text(
          'Sign Up',
          style: TextStyle(color: Color1.whitecolor, fontSize: 20),
        ),
      ),
    );
  }
}
