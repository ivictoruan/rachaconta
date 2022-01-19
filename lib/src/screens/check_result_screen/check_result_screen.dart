import 'package:flutter/material.dart';
// import 'package:rachaconta/src/core/widgets/action_button.dart';

class CheckResultScreen extends StatefulWidget {
  
  final double totalPrice;
  final int numPeople;
  final double waiterPercentage;
  final bool isDriking;
  // final int numDrinkers;
  // final double pricePerPerson;

  const CheckResultScreen({
    Key? key,
    required this.totalPrice, 
    required this.numPeople, 
    required this.isDriking, 
    required this.waiterPercentage,
  }) : super(key: key);

  @override
  State<CheckResultScreen> createState() => _CheckResultScreenState();
}

class _CheckResultScreenState extends State<CheckResultScreen> {
  
  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      
      appBar: AppBar(
        title: const Text('Resultado da Conta'),
        centerTitle: true,        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ), 
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[           
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Cada um deve pagar: R\$${widget.totalPrice / widget.numPeople} (sem gorjeta)',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),        
          ],
        ),
      ),
    );
  }
}

