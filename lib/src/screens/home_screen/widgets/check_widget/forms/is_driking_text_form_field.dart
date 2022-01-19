import 'package:flutter/material.dart';
import 'package:rachaconta/src/core/widgets/custom_text_field.dart';

List<Widget> isDrikingTextFormField(bool _isDriking, int _numDrinkers, double _drinkPrice ){
    return [
      CustomTextField(
        labelText: 'Nº de pessoas bebendo',
        enabled: _isDriking,        
        // decoration: const InputDecoration(border: OutlineInputBorder()),
        keyboardType: TextInputType.number,
        onSaved: (value) {
          _numDrinkers = int.parse(value!);
        },
        validator: (value) {
          if (value == null ||value.isEmpty ) {
            return 'O número de pessoas não pode ser vazio!';
          } else if (int.tryParse(value) == null) {
            return 'O valor precisa ser numérico!';
          }else if ( int.tryParse(value)! < 1){
            return 'O número de pessoas precisa ser maior que 0!';
          }
          return null;
        },         
      ),
      const SizedBox(height:10),
      CustomTextField(
        labelText: 'Valor das bebidas R\$',
        enabled: _isDriking,
        keyboardType: TextInputType.number,
        onSaved: (value) {
          _drinkPrice = double.parse(value!);
        },
        validator: (value) {
          if (value == null ||value.isEmpty) {
            return 'O valor da conta não pode ser vazio!';
          } else if (double.tryParse(value) == null) {
            return 'O valor precisa ser numérico!';
          }
          return null;
        },         
      )
    ];
  }