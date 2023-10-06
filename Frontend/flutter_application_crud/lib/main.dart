// 39
import 'package:flutter/material.dart';
import 'package:flutter_application_crud/createData.dart';
import 'package:flutter_application_crud/services/fetch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyFirstApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD Application"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return POST();
                  }));
                },
                child: const Text("CREATE")),
            ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FetchData();
                  }));
                }, child: const Text("READ")),
            ElevatedButton(onPressed: () {}, child: const Text("UPDATE")),
            ElevatedButton(onPressed: () {}, child: const Text("DELETE"))
          ],
        ),
      ),
    );
  }
}
