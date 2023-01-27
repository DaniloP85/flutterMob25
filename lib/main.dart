// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
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
                  text: '+55 11 9 8956-3173',
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

class MyButton extends StatelessWidget{
  const MyButton({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  final IconData icon;
  final String text;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        color: Colors.white,
        child: ListTile(
          onTap: onPressed,
          leading: Icon(icon, color: Colors.blueAccent,),
          title: Text(text, style: GoogleFonts.ubuntu(
              color: Colors.blueAccent
          )),
        ),
      ),
    );
  }
}
