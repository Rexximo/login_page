import 'package:flutter/material.dart';
import '../widgets/login_header.dart';
import '../widgets/login_form.dart';
import '../widgets/login_footer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LoginHeader(),
                  SizedBox(height: 10),
                  LoginForm(),
                  SizedBox(height: 10),
                  LoginFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}