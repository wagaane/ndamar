import 'package:flutter/material.dart';

import '../configs/color_config.dart';
class LoginRegisterButton extends StatefulWidget {
  final String textButton;
  final Icon icon;
  final Color backgroundColor;
  const LoginRegisterButton({super.key, required this.textButton, required this.icon, required this.backgroundColor});

  @override
  State<LoginRegisterButton> createState() => _LoginRegisterButtonState();
}

class _LoginRegisterButtonState extends State<LoginRegisterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 40,
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5.0))
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon((Icons.app_registration), size: 30, color: Colors.white,),
            const SizedBox(width: 10,),
            Text(widget.textButton.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 18),),
          ],
        )
    );
  }
}
