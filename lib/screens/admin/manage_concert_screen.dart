import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageConcertScreen extends StatelessWidget {
  const ManageConcertScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manage Concerts")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (_, index){
            return ListTile(
              title: Text("Concert $index"),
              subtitle: const Text("Date - Location"),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete),),
            );
          }),
    );
  }
}
