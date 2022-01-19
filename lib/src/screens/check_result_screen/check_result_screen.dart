import 'package:flutter/material.dart';
// import 'package:rachaconta/src/core/widgets/action_button.dart';

class CheckResultScreen extends StatefulWidget {
  
  final double totalPrice;
  final double individualPrice;
  final double priceWhoDrank;
  final double waiterValue;


  const CheckResultScreen({
    Key? key,
    required this.totalPrice, 
    required this.individualPrice, 
    required this.priceWhoDrank, 
    required this.waiterValue,
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
                'Valor total da conta: R\$${widget.totalPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(              
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Valor para que não bebeu: R\$${widget.individualPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline4,                
              ),
            ),
            if(widget.priceWhoDrank>0)...{ Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Valor para que bebeu: R\$${widget.priceWhoDrank.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            },
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Valor da gorjeta: R\$${widget.waiterValue.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),                 
          ],
        ),
      ),
    );
  }
}

