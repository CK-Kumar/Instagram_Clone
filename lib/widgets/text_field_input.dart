import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput(
      {Key? key,
      required this.textEditingController,
      this.isPassword = false,
      required this.hintText,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      obscureText: isPassword,
      keyboardType: textInputType,
    );
  }
}
