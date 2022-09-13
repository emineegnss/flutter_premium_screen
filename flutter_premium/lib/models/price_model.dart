import 'package:flutter/cupertino.dart';

class PriceModel {
  final String icon;
  final String title;
  final String subtitle;
  final String price;
  final String message;

  PriceModel(
      {required this.icon, required this.title, required this.subtitle, required this.price, required this.message});
}

class FeaturesModel {
  final String text;
  final IconData pIcon;
  final IconData fIcon;
  final bool isFree;

  FeaturesModel({required this.text, required this.pIcon, required this.fIcon, required this.isFree});
}
