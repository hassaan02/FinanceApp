import 'package:flutter/material.dart';

class Money {
  // String? image;
  String? name;
  String? time;
  String? fee;
  bool? buy;
} 

List <Money> geter(){
  Money fiver = Money();
  // fiver.image = "lib/Assets/Images/food.png";
  fiver.name = "Fiverr";
  fiver.fee = "350";
  fiver.time = "Today";
  fiver.buy = false;

  Money KFC = Money();
  // fiver.image = "lib/Assets/Images/food.png";
  KFC.name = "KFC";
  KFC.fee = "50";
  KFC.time = "Yesterday";
  KFC.buy = true;


  return [fiver, KFC];
}
