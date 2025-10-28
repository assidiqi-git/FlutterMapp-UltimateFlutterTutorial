import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget_tree.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String confirmedEmail = '123';
  String confirmedPass = '123';

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                HeroWidget(title: widget.title),
                Column(
                  spacing: 10,
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Email',
                      ),
                      onEditingComplete: () {
                        setState(() {});
                      },
                    ),
                    TextField(
                      controller: passController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Password',
                      ),
                      onEditingComplete: () {
                        setState(() {});
                      },
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    onLoginPressed();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text(widget.title),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == emailController.text &&
        confirmedPass == passController.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    }
  }
}
