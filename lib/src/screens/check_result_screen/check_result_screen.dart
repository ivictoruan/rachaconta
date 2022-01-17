import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/action_button.dart';

class CheckResultScreen extends StatelessWidget {
  const CheckResultScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        centerTitle: true,        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Resultado total da conta:',
            //     style: Theme.of(context).textTheme.headline4,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'O valor total para quem bebeu:',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                'R\$ 0,00',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),  
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'O valor total Para quem não bebeu:',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                'R\$ 0,00',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),         
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'A gorgeta do Garçom é ( n %):',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                'R\$ 0,00',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ), 
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Rachadura de 10 a 12',
            //     style: Theme.of(context).textTheme.headline6,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Rachadura de 13 a 15',
            //     style: Theme.of(context).textTheme.headline6,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Rachadura de 16 a 18',
            //     style: Theme.of(context).textTheme.headline6,
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(
            //     'Rachadura de 19 a 21',
            //     style: Theme.of(context).textTheme.headline6,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}