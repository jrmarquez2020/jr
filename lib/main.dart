import 'package:final_project/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomePage(),
       theme: ThemeData(
        textTheme: const TextTheme(
          caption: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

