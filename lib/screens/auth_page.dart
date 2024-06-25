import 'package:flutter/material.dart';
import 'package:untitled/components/login_form.dart';
import 'package:untitled/utils/text.dart';

import '../components/social_button.dart';
import '../utils/config.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return  Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
        child:SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  AppText.enText['welcome_text']!,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Config.spaceSmall,
                Text(AppText.enText['signIn_text']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Config.spaceSmall,
                const LoginForm(),
                Config.spaceSmall,
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'main');
                    },
                    child: Text(AppText.enText['forgot-password']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Center(
                  child: Text(
                    AppText.enText['social-login']!,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Config.spaceSmall,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                  children: <Widget>[
                    SocialButton(social: 'Facebook'),
                    SocialButton(social: 'Google'),

                  ],
                ),
                Config.spaceSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      AppText.enText['registered_text']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text(
                        AppText.enText['register_text']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
      ),
    );
  }
}
