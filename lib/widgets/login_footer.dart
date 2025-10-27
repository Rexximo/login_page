import 'package:flutter/material.dart';
import 'package:login_page/theme/app_theme.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account? ',
          style: TextStyle(
            color: AppTheme.sec2Color,
          ),
        ),
        TextButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Fitur daftar'),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: AppTheme.secColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}