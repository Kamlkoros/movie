import 'package:flutter/material.dart';
import 'package:movie/widgets/social_login_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 120),
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: const Color.fromARGB(255, 86, 86, 86),
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Back to login',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 86, 86, 86),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Text(
                'Forgot Your Password?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Don't worry, happens to all of us. Enter your email below to recover your password",
                style: TextStyle(
                  color: const Color.fromARGB(255, 86, 86, 86),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 16,
                  ),
                  labelText: 'Email',
                  hintText: 'sagarsomani@3570@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.black26,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verify_code_screen');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40),
                  backgroundColor: Color(0xFF515DEF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Or login with',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialLoginButton('assets/images/facebook.png'),
                  SizedBox(width: 12),
                  socialLoginButton('assets/images/google.png'),
                  SizedBox(width: 12),
                  socialLoginButton('assets/images/apple.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
