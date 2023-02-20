import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.inputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      keyboardType: inputType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "Minimo de 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          //counterText: "3 caracteres",
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          //prefixIcon: Icon(Icons.access_time_outlined),
          icon: icon == null ? null : Icon(icon)
      ),
    );
  }
}