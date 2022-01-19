import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/action_button.dart';
import 'package:rachaconta/src/core/widgets/custom_text_field.dart';
import 'package:rachaconta/src/screens/check_result_screen/check_result_screen.dart';

import 'forms/is_driking_text_form_field.dart';


class CheckWidget extends StatefulWidget {
  const CheckWidget({ Key? key }) : super(key: key);

  @override
  _CheckWidgetState createState() => _CheckWidgetState();
}


class _CheckWidgetState extends State<CheckWidget> {
    final formKey = GlobalKey<FormState>();


  double _totalPrice = 0;
  int _numPeople = 1;
  double _waiterPercentage = 10; // garçom
  bool _isDriking = false;
  int _numDrinkers = 0;
  double _drinkPrice = 0;
  



  void doCheck(){
    if(formKey.currentState!.validate()){
      formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CheckResultScreen(
            totalPrice: _totalPrice,
            numPeople: _numPeople,
            isDriking: _isDriking,
            waiterPercentage: _waiterPercentage/100
          ),
        ),
      );
    }

  }

  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(        
          padding: const EdgeInsets.all(45),
          child: Column(
            children:  [              
              const SizedBox(height:20),
              
              CustomTextField(
                // initialValue: _totalPrice.toStringAsFixed(2),
                labelText: "R\$ 0,00 Total", 
                icon: Icons.price_change_outlined,
                keyboardType: TextInputType.number,
                validator: (value) {
                    if (value == null || value.isEmpty ) {
                      return 'O valor da conta não pode ser vazio!';
                    } else if (double.tryParse(value) == null) {
                      return 'O valor precisa ser numérico!';
                    }
                    return null;
                  },
                onSaved: (value) => _totalPrice = double.parse(value!),  

              ),

              const SizedBox(height:10),

              CustomTextField(
                // initialValue: _numPeople.toString(),
                labelText: "Nº de pessoas",
                hintText: "1",
                keyboardType: TextInputType.number,
                icon: Icons.people_outline_sharp,
                validator: (value) {
                    if (value == null || value.isEmpty ) {
                      return 'O número de pessoas não pode ser vazio!';
                    } else if (int.tryParse(value) == null) {
                      return 'O número de pessoas precisa ser numérico!';
                    }else if ( int.tryParse(value)! < 1){
                      return 'O número de pessoas precisa ser maior que 0!';
                    }
                    return null;
                },
                onSaved: (value) => _numPeople = int.parse(value!),
              ),

              const SizedBox(height:20),

              Row(
                children: [
                  Checkbox(
                    value: _isDriking,
                     onChanged: (bool? newValue) {
                      setState(() {
                        _isDriking = newValue!;                        
                      });
                    }
                  ),
                  const Text("Alguém bebendo?")
                ],
              ),

              if (_isDriking)... isDrikingTextFormField(_isDriking, _numDrinkers, _drinkPrice),

              Text('Gorjeta do garçom: ' +
                      _waiterPercentage.toStringAsFixed(0) +
                      '%'),

              Slider(
                  value: _waiterPercentage.toDouble(), 
                  onChanged: (value) {
                    setState(() {
                      _waiterPercentage = value.toDouble();
                    });
                  },
                  min: 0,
                  max: 100,
                  divisions: 20,
                  label: _waiterPercentage.toStringAsFixed(0), // toStringAsFixed(0) para não ter casas decimais

                ),  

              ActionButton(
                "Rachar a conta",              
                onPressed: () {
                  doCheck();
                 }, 
              ),              
            ],
          ),
        ),
    );
  }
  
}
