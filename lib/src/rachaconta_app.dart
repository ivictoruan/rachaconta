import 'package:flutter/material.dart';
import 'home_screen/home_screen.dart';

class RachaContaApp extends StatelessWidget {
  const RachaContaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Racha Pinga e Lanche",
      
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomeScreen(title: 'Racha Pinga e Lanche'),
    );
  }
}
