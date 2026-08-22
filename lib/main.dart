import 'package:flutter/material.dart';
import 'package:learnova/grade_Selection_Screen.dart';

void main(){
  runApp(Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: SizedBox(
        width: 330,
        height: 672,
        child: const MyApp()),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradeSelectionScreen(),
      );
    
  }
}

