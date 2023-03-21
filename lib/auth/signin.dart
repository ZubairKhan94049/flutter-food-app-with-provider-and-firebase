import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/backgroundjpg.jpg'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Sign in to continue',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 235, 3, 3),
                    ),
                  ),
                  const Text(
                    'Pytoo Panda',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color.fromARGB(255, 255, 0, 0),
                          offset: Offset(3, 3),
                        )
                      ],
                    ),
                  ),
                  SignInButton(
                    Buttons.Google,
                    text: 'Sign in with google',
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Apple,
                    text: 'Sign in with apple',
                    onPressed: () {},
                  ),
                  const Text(
                    'By sign in you are agree to our terms and policy',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
