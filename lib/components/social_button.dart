import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/utils/config.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social});
  final String social;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, ),
          side: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        onPressed: () {},
        child: SizedBox(
          width: Config.widthSize * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                  'assets/$social.png',
                  width: 40,
                  height: 40,
                ),
                Text(
                  social.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
              ),
            ],
          ),
        ));
  }
}
