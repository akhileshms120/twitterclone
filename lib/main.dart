import 'package:flutter/material.dart';
import 'package:twitter/features/auth/view/login_view.dart';
import 'package:twitter/theme/app_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: AppTheme.theme,
      home: const LoginView(),
    );
  }
}