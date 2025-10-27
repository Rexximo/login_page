// lib/widgets/login_header.dart
import 'package:flutter/material.dart';
import 'package:login_page/theme/app_theme.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo Image - terpisah tanpa dekorasi apapun
        Center(
          child: Image.asset(
            'assets/images/cyber.png',
            width: 350,
            height: 350,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.image_not_supported,
                size: 150,
                color: Colors.grey,
              );
            },
          ),
        ),
        const SizedBox(height: 5),

        // Text Section - terpisah dari image, rata kiri
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'Welcome Player!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AppTheme.secColor,
              ),
            ),
            const SizedBox(height: 5),

            // Subtitle
            Text(
              'Your legend begins now.',
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.sec2Color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}