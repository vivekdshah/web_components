import 'package:flutter/material.dart';
import 'package:web_components/web_components.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HeaderWidget(
            headerTitle: 'Home',
            backgroundColor: Colors.black,
            centerHeader: true,
            headerStyle: TextStyle(color: Colors.white, fontSize: 20),
            prefixWidget: Icon(Icons.menu,color:Colors.white,size: 28,),
            suffixWidget: Icon(Icons.person,color:Colors.white,size: 28,),
          )
        ],
      ),
    );
  }
}
