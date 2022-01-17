import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/action_button.dart';
import 'package:rachaconta/src/core/widgets/custom_text_field.dart';
import 'package:rachaconta/src/screens/home_screen/widgets/check_widget/check_widget_controller.dart';


class CheckWidget extends StatefulWidget {
  const CheckWidget({ Key? key }) : super(key: key);

  @override
  _CheckWidgetState createState() => _CheckWidgetState();
}


class _CheckWidgetState extends State<CheckWidget> {

  final CheckWidgetController _controller = CheckWidgetController();

  final TextEditingController _totalPriceTextController = TextEditingController();
  final TextEditingController _numPeopleTextController = TextEditingController();
  // final TextEditingController _isDrikingTextController = TextEditingController();
  // final TextEditingController _waiterPercentageTextController = TextEditingController();

  String _totalPrice = "";
  String _numPeople = "";
  int peopleDriking = 0;
  bool isDriking = false;
  double drinkPrice = 0.0;
  double waiterPercentage = 10; // garçom
  
  String _errorMsg = "";

  
  @override
  void initState(){
    super.initState();
    _totalPriceTextController.addListener(() => { 
      _totalPrice = _totalPriceTextController.text }
    );
    _numPeopleTextController.addListener(() => {
      _numPeople = _numPeopleTextController.text });
  }

  @override
    void dispose(){
      super.dispose();

      _numPeopleTextController.dispose();
      _totalPriceTextController.dispose();

    }

  // void doCheck(){
  //     if(_controller.check(_totalPrice, _numPeople)) {      
  //       setState(() {
  //         _errorMsg = "";
  //       });

  //       // print("Login was realized with success");
  //       // Navigator.pushReplacementNamed(context, "/home");

  //     } else {
  //       setState(() {
  //         _errorMsg = "Valores inválidos!";
  //       });

  //       // print("Login Error!");
  //     }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          children:  [
            //Estão bebendo?
            const SizedBox(height:20),
            const CustomTextField(
              labelText: "R\$ 0,00 Total", 
              icon: Icons.price_change_outlined,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height:10),
            const CustomTextField(
              labelText: "Nº de pessoas",
              hintText: "1",
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
                // numberFormat: NumberFormat("R\$"),
                onChanged: (value) {
                  setState(() {
                    waiterPercentage = value;
                  });
                },
                min: 0,
                max: 100,
                divisions: 20,
                label: waiterPercentage.toStringAsFixed(0), // toStringAsFixed(0) para não ter casas decimais
              ),
            // porcentagem do garçom
            ActionButton(
              "Rachar a conta",              
              onPressed: () {  }, 
            )
          
          ],
        ),
      );
  }
}