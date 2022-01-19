import 'package:flutter/material.dart';
// import 'package:rachaconta/src/screens/check_result_screen/check_result_screen.dart';
import 'screens/home_screen/home_screen.dart';

class RachaContaApp extends StatelessWidget {
  const RachaContaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Racha Racha",
      initialRoute: "/",
      routes: {
        "/":(context) => const HomeScreen(),
        // "/checkresult":(context) => const CheckResultScreen(),
        // "/history":(context) => const HistoryScreen(),                            
      },
      
      theme: ThemeData(
        primarySwatch: Colors.red

      ),
    );
  }
}
