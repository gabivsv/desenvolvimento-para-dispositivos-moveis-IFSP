import 'package:flutter/material.dart';
import '../widgets/login_form.dart';
import '../models/login.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _login(BuildContext context, Login login) {
    if (login.username == 'admin' && login.password == '1234') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login falhou! Usuário ou senha incorretos.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/flutter-logo.jpeg', height: 120),
              SizedBox(height: 40),
              LoginForm(onLogin: (login) => _login(context, login)),
            ],
          ),
        ),
      ),
    );
  }
}
