import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/action_button.dart';
import 'package:rachaconta/src/core/widgets/custom_text_field.dart';

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
          children:  [
            //Estão bebendo?
            const SizedBox(height:20),
            const CustomTextField(labelText: "R\$ 0,00", icon: Icons.price_change_outlined),
            const SizedBox(height:10),
            const CustomTextField(labelText: "Nº de pessoas", icon: Icons.people_outline_sharp),
            const SizedBox(height:10),
            // CustomTextField(),            
            // porcentagem do garçom
            ActionButton(
              "Rachar a conta",              
              onPressed: () {  }, 
            )
          
          ],
        ),
      ),
     
    );
  }
}

