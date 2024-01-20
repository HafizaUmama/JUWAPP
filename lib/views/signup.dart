import 'package:flutter/material.dart';
import 'package:juw_services/constants/utils.dart';
import 'package:juw_services/views/button.dart';
import 'package:juw_services/views/textform.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = 'Select Role';
  List<String> roles = ['Select Role', 'Staff', 'Supervisor', 'Technician'];

  String? nameError;
  String? emailError;
  String? passwordError;

  void validateInputs() {
    setState(() {
      nameError = nameController.text.isEmpty ? 'Please enter your name' : null;

      final emailRegex = RegExp(
          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
      emailError = !emailRegex.hasMatch(emailController.text)
          ? 'Invalid email address'
          : null;

      passwordError = passwordController.text.length < 6
          ? 'Password must be at least 6 characters long'
          : null;
    });
  }

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
                    'SignUp',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(Color1.browncolor),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextFormGlobal(
                    controller: nameController,
                    text: 'Name',
                    textInputType: TextInputType.name,
                    obscure: false,
                  ),
                  if (nameError != null)
                    Text(
                      nameError!,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  SizedBox(height: 8),
                  TextFormGlobal(
                    controller: emailController,
                    text: 'Email',
                    textInputType: TextInputType.emailAddress,
                    obscure: false,
                  ),
                  if (emailError != null)
                    Text(
                      emailError!,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  SizedBox(height: 8),
                  TextFormGlobal(
                    controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscure: true,
                  ),
                  if (passwordError != null)
                    Text(
                      passwordError!,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(right: 245),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: DropdownButton<String>(
                      value: selectedRole,
                      onChanged: (newValue) {
                        setState(() {
                          selectedRole = newValue!;
                        });
                      },
                      items: roles.map((role) {
                        return DropdownMenuItem<String>(
                          value: role,
                          child: Text(
                            role,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  SignUpbutton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
