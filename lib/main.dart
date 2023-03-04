import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:it20026448/recipe.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:it20026448/add_recipe.dart';

void main() async {
  //Initialize database when starting the application
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: AddRecipe()));
}
