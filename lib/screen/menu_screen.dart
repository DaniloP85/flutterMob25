import 'package:aula1/screen/Personal_card_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu_screen';
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Menu inicial',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 16, width: double.infinity),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, PersonalCardScreen.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(1000),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Text(
                    'Cartão pessoal',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
