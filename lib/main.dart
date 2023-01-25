import 'package:flutter/material.dart';

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
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.red),
              ),
              flex: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.yellow),
                          height: 100,
                          width: 100,
                        ),
                    ),
                    Center(
                          child: Container(
                            decoration: const BoxDecoration(color: Colors.green),
                            height: 100,
                            width: 100,
                          ),
                    ),
                  ]
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.blue),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
