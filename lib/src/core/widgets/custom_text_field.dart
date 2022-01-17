import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String labelText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final String? hintText;
  final String? Function(String? text)? validator;
  final void Function(String? text)? onSaved;
  
  const CustomTextField(
    {
      Key? key, required this.labelText, this.icon, this.keyboardType, this.hintText, this.validator, this.onSaved,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(  
              keyboardType: keyboardType,
              decoration: InputDecoration(  
                labelText: labelText,
                hintText: hintText ?? "Digite o $labelText", 
                prefixIcon:icon == null ? null : Icon(icon),                            
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),                                                                        
                ),                
              ),
              validator: validator,
              onSaved: onSaved,
            );
  }
}
