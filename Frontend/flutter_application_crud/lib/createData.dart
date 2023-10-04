import 'package:flutter/material.dart';

class POST extends StatefulWidget {
  const POST({super.key});

  @override
  State<POST> createState() => _POSTState();
}

TextEditingController name = TextEditingController();
TextEditingController price = TextEditingController();
TextEditingController desc = TextEditingController();

class _POSTState extends State<POST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(label: Text("Name")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: price,
              decoration: const InputDecoration(label: Text("Email")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: desc,
              decoration: const InputDecoration(label: Text("Designation")),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("POST"))
          ],
        ),
      ),
    );
  }
}
