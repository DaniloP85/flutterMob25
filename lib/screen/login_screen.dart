import 'package:flutter/material.dart';
import '../components/question_button.dart';
import '../widgets/my_textfield.dart';
import 'menu_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = '';
  var obscurePassword = true;
  var password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, children: [
            MyTextField(
              keyboardType: TextInputType.emailAddress,
              labelText: 'e-mail',
              onChanged: (newEmail) {
                email = newEmail;
              },
            ),
            const SizedBox(height: 16),
            Stack(
              children: [
                MyTextField(
                  labelText: 'Senha',
                  obscureText: obscurePassword,
                  onChanged: (newPasswordValue) {
                    password = newPasswordValue;
                  },
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      obscurePassword = !obscurePassword;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            QuestionButton(onPressed: authenticateUser, text: 'Entrar'),
          ]),
        ),
      ),
    );
  }

  void authenticateUser() {
    Navigator.pushNamed(context, MenuScreen.id);
  }
}
