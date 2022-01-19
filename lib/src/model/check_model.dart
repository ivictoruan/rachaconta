import 'package:flutter/material.dart';

@immutable
class CheckModel {
  final bool isDriking;
  final double waiterPercentage;  
  final double totalPrice;
  final int numPeople;
  final int peopleDriking;
  final double drinkPrice;
  // poderia adicionar um campo para adicionar o local onde a conta foi feita! (funcinalidade de mostrar no mapa?)

  const CheckModel({
    this.totalPrice = 0.0,
    this.isDriking = false,
    this.numPeople = 1, 
    this.peopleDriking = 0, 
    this.drinkPrice = 0.0,
    this.waiterPercentage = 10 });

  get totalValue => null;
  
  CheckModel copyWith({
    bool? isDriking,
    double? waiterPercentage,
    double? totalPrice,
    int? numPeople,
    int? peopleDriking,
    double? drinkPrice
  }) => CheckModel(
    isDriking: isDriking ?? this.isDriking,
    waiterPercentage: waiterPercentage ?? this.waiterPercentage,
    totalPrice: totalPrice ?? this.totalPrice,
    numPeople: numPeople ?? this.numPeople,
    peopleDriking: peopleDriking ?? this.peopleDriking,
    drinkPrice: drinkPrice ?? this.drinkPrice
  );
}
  
