import 'package:flutter/material.dart';
import 'package:signup_screen_sample/utils/constants.dart' as constants;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignUpScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: constants.emailHintText,
                    labelText: constants.emailLabel,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return constants.emailEmpty;
                    }
                    if (!RegExp(constants.emailRegExp).hasMatch(value)) {
                      return constants.emailValidationError;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: constants.passwordText,
                    labelText: constants.passwordText,
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return constants.passwordEmpty;
                    }
                    // 英数字、大文字小文字、記号のうち2種類以上6桁以上
                    if (!RegExp(constants.passwordRegExp).hasMatch(value)) {
                      return constants.passwordValidationError;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  constants.passwordValidRules,
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text(constants.signUpButton),
                onPressed: () {
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: _formKey.currentState!.validate()
                              ? const Text(constants.signUpSuccess)
                              : const Text(constants.signUpFailed)),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
