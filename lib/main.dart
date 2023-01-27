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
              CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Text(
                  'Danilo Santos',
                  style: GoogleFonts.pacifico(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  elevation: 4,
                  color: Colors.blueAccent,
                  child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.email, color: Colors.white,),
                    title: Text('danilopsnts@gmail.com'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
