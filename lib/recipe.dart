import 'package:flutter/material.dart';

class Recipe {
  String title, description;
  List<String> ingredients = [];

  Recipe(
      {required this.title,
      required this.description,
      required this.ingredients});
}
