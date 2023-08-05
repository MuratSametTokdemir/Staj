import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obsureText = "*";
  bool _isSecure = true;
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      obscuringCharacter: _obsureText,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password",
        suffix: IconButton(
            onPressed: () {
              _changeLoading();
            },
            icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off)),
      ),
    );
  }
}
