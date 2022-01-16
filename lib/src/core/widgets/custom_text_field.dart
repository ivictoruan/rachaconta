import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String labelText;
  final IconData? icon;
  final TextInputType? keyboardType;
  
  const CustomTextField(
    {
      Key? key, required this.labelText, this.icon, this.keyboardType,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(   
              keyboardType: keyboardType,           
              decoration: InputDecoration(  
                labelText: labelText,
                hintText: "Digite o $labelText",  
                prefixIcon:icon == null ? null : Icon(icon),                            
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),                                                                        
                ),
              ),
            );
  }
}
