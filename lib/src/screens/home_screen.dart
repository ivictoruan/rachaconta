import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _counter = 0;

  // void _incrementCounter() { // criar uma função de incrementar a cada uso do app.
  //   setState(() {
  //     _counter++;
  //   });
  // }
  //fazer um model com as seguintes variáveis:
  int numPeople = 0;
  int peopleDriking = 0;
  bool isDriking = false;
  double totalPrice = 0.0;
  double drinkPrice = 0.0;
  double waiterPercentage = 10; // garçom
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: const Text("Racha Racha"), 
        centerTitle: true,      
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            CustomTextField(),
            SizedBox(height:10),
            CustomTextField(),
            SizedBox(height:10),
            CustomTextField(),
                        
          ],
        ),
      ),
     
    );
  }
}

