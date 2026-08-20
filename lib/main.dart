import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: SizedBox(
      width: 300,
      height: 672,
      child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
              backgroundColor: Color(0xff0000ff),
              toolbarHeight: 50,
              actions: [
                Icon(Icons.person,
                color: Color(0xffffffff),
                size: 40,
                
                )
              ],
              

        )
       ,
      ),
    );
  }
}