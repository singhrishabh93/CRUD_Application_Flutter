import 'package:flutter/material.dart';
import 'package:flutter_application_crud/services/api.dart';

class POST extends StatefulWidget {
  const POST({super.key});

  @override
  State<POST> createState() => _POSTState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController descController = TextEditingController();

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
              controller: nameController,
              decoration: const InputDecoration(label: Text("Name")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(label: Text("Email")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(label: Text("Designation")),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  var data = {
                    "pname": nameController.text,
                    "pemail": emailController.text,
                    "pdesc": descController.text,
                  };

                  Api.addUser(data);
                },
                child: const Text("Create Data"))
          ],
        ),
      ),
    );
  }
}
