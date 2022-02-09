import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  TextEditingController controller;
  late TextInputType type;

  void Function(String value)? onSubmit;

  void Function()? onTap;
  void Function(String value)? onChange;
  bool isPassword;
  String Function(String? value)? validate;

  String? label;
  IconData? prefix;
  IconData? suffix;
  VoidCallback? suffixPressed;
  bool? isClickable;

  DefaultFormField(
      {required this.controller,
      required this.type,
      this.onSubmit,
      this.onTap,
      this.onChange,
      this.isPassword = false,
      this.validate,
      required this.label,
      required this.prefix,
      this.suffix,
      this.suffixPressed,
      this.isClickable = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      style: TextStyle(color: Colors.black),
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : Container(),
        border: OutlineInputBorder(),
      ),
    );
  }
}
