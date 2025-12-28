
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageSeatScreen extends StatelessWidget {
  const ManageSeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Seats")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Number of rows"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Seats per row"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text("Create Seat Layout"),
            )
          ],
        ),
      ),
    );
  }
}
