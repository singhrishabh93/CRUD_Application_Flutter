import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

          }, child: Text("CREATE")),
          ElevatedButton(onPressed: (){

          }, child: Text("READ")),
          ElevatedButton(onPressed: (){

          }, child: Text("UPDATE")),
          ElevatedButton(onPressed: (){

          }, child: Text("DELETE")),
        ],
      ),
    );
  }
}
