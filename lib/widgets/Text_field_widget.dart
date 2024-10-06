import 'package:flutter/material.dart';

import '../configs/color_config.dart';
class TextFieldWidget extends StatefulWidget {
  final String text;
  final bool obscureText;
  final Icon prefixIcon;
  final suffixIcon;

  const TextFieldWidget({super.key, required this.text, this.obscureText = false, required this.prefixIcon, this.suffixIcon});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
    decoration: InputDecoration(

      labelText: widget.text,
      // hintStyle: TextStyle(color: Colors.white),
      prefixIcon: widget.prefixIcon,
      suffixIcon: widget.suffixIcon,
      labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConf.cunstomOrange),
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black54),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
    ),
    );
  }
}
