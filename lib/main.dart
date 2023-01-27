import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danilo Santos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage('https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Danilo Santos',
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              MyButton(
                  icon: Icons.phone,
                  text: '+55 11 9 8956-3174',
                  onPressed:() => { print('Clicou no phone')} ),
              MyButton(
                  icon: Icons.email,
                  text: 'danilopsnts@gmail.com',
                  onPressed:() => { print('Clicou no email')} ),
            ],
          ),
        ),
      ),
    );
  }
}


