import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final String helperText;
  final IconData icon;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;
  // final KeyBoardType keyboardType;

  const CustomInputField({
    Key key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    @required this.formValues,
    @required this.formProperty,
    // this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        keyboardType: keyboardType,
        obscureText: obscureText,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            helperText: helperText,
            counterText: '3 caracteres',
            suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
            icon: icon == null ? null : Icon(icon)));
  }
}
