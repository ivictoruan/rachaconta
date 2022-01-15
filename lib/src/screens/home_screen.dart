import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/action_button.dart';
import 'package:rachaconta/src/core/widgets/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numPeople = 1;
  int peopleDriking = 0;
  bool isDriking = false;
  double totalPrice = 0.0;
  double drinkPrice = 0.0;
  double waiterPercentage = 10; // garçom
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: const Text("Racha Racha"), 
        centerTitle: true,
        elevation: 1,
          leading: IconButton(
            onPressed: () => {}, 
            icon: const Icon(Icons.menu),
          ),
        actions: [
            IconButton(
              onPressed: () => {},
               icon: const Icon(Icons.history),               
            ),
          ],       
      ),

      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children:  [
            //Estão bebendo?
            const SizedBox(height:20),
            const CustomTextField(
              labelText: "R\$ 0,00", 
              icon: Icons.price_change_outlined
            ),
            const SizedBox(height:10),
            const CustomTextField(
              labelText: "Nº de pessoas",
              icon: Icons.people_outline_sharp
            ),
            const SizedBox(height:20),
            Row(
              children: [
                Checkbox(
                  value: isDriking,
                   onChanged: (bool? newValue) {
                    setState(() {
                      isDriking = newValue!;
                    });
                  }
                ),
                const Text("Alguém bebendo?")
              ],
            ),
            Text('Porcetagem do garçom: ' +
                    waiterPercentage.toStringAsFixed(0) +
                    '%'),
            Slider(
                value: waiterPercentage,
                onChanged: (value) {
                  setState(() {
                    waiterPercentage = value;
                  });
                },
                min: 0,
                max: 100,
                divisions: 100,
                label: waiterPercentage.toStringAsFixed(0),
              ),
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

