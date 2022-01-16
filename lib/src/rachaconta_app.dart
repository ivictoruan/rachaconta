import 'package:flutter/material.dart';
import 'screens/home_screen/home_screen.dart';

class RachaContaApp extends StatelessWidget {
  const RachaContaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Racha Racha",
      initialRoute: "/",
      routes: {
        "/":(context) => const HomeScreen(),
        // "/history":(context) => const HistoryScreen(),                            
      },
      
      theme: ThemeData(
        primarySwatch: Colors.red

      ),
    );
  }
}
