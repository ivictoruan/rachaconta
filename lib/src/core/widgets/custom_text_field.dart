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
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),                  
                ),
              ),
            );
  }
}
