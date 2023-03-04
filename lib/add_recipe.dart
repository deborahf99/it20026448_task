import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:it20026448/add_recipe.dart';
// import the firebase core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:it20026448/recipe.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddRecipe extends StatefulWidget {
  @override
  _AddRecipeState createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  final myControllerTitle = TextEditingController(text: '');
  final myControllerDescription = TextEditingController(text: '');
  final myControllerIngredients = TextEditingController(text: '');
  final databaseRef = FirebaseDatabase.instance.ref();
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  final List<String> _title = [];
  final List<String> _description = [];
  final List<String> _ingredients = [];
  List<Recipe> recipe = [];

  bool equalsIgnoreCase(String string1, String string2) {
    return string1?.toLowerCase() == string2?.toLowerCase();
  }

  void addData(String title, String desc, String ing) {
    databaseRef.push().set(
        {'name': title, 'name': desc, 'name': ing, 'comment': 'A good season'});
  }

  @override
  void dispose() {
    //clean the controller when the widget is disposed
    myControllerTitle.dispose();
    myControllerIngredients.dispose();
    myControllerDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                children: [
                  TextField(
                    controller: myControllerTitle,
                    decoration: InputDecoration(labelText: 'Enter Title'),
                  ),
                  TextField(
                    controller: myControllerDescription,
                    decoration: InputDecoration(labelText: 'Enter Description'),
                  ),
                  TextField(
                    controller: myControllerIngredients,
                    decoration: InputDecoration(labelText: 'Enter Ingredients'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        //add to database
                        FirebaseFirestore.instance
                            .collection('recipe')
                            .add({'text': 'data added to database'});
                        addData(
                            myControllerTitle.text,
                            myControllerDescription.text,
                            myControllerIngredients.text);
                        //add to array
                        /*tasks.add(Task(
                    status: myControllerStatus.text,
                    task: myControllerTask.text));*/
                        myControllerDescription.clear();
                        myControllerTitle.clear();
                        myControllerIngredients.clear();
                        setState(() {});
                      },
                      child: Text('Save'),
                    ),
                  ),
                ],
              );
            }
          },
        ));
  }
}
