import 'package:flutter/material.dart';
import 'package:dress_me_up/screens/login_screen.dart';
import 'package:dress_me_up/screens/register_screen.dart';
import 'package:dress_me_up/theme/theme.dart';
import 'package:dress_me_up/widgets/custom_scaffold.dart';
import 'package:dress_me_up/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Welcome Back!\n',
                            style: TextStyle(
                              fontSize: 45.0,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text:
                                '\nEnter personal details to your employee account',
                            style: TextStyle(
                              fontSize: 20,
                              // height: 0,
                            ))
                      ],
                    ),
                  ),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: const [
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Iniciar Sesion',
                      onTap: LoginScreen(),
                      color: Color.fromARGB(0, 24, 23, 23),
                      textColor: Color.fromARGB(255, 31, 29, 29),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Registrarse',
                      onTap: RegisterScreen(),
                      color: Color.fromARGB(255, 17, 17, 17),
                      textColor: Color.fromARGB(255, 252, 252, 252),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}