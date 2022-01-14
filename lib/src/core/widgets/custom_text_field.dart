import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String labelText;
  
  const CustomTextField(
    {
      Key? key, required this.labelText,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(             
              decoration: InputDecoration(  
                labelText: labelText,
                hintText: "Digite o $labelText",  
                prefixIcon: const Icon(Icons.done),              
                // icon: Icons.ac_unit_outlined,                                  
                border: const OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                                                                        
                ),
              ),
            );
  }
}
