import 'package:concertbooker/screens/admin/seat_preview_screen.dart';
import 'package:flutter/material.dart';

class CreateConcertScreen extends StatefulWidget {
  const CreateConcertScreen({super.key});

  @override
  State<CreateConcertScreen> createState() => _CreateConcertScreenState();
}

class _CreateConcertScreenState extends State<CreateConcertScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _rowsController = TextEditingController();
  final _colsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Create Concert")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Concert Name"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: "Location"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),
              TextFormField(
                controller: _rowsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Rows"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),
              TextFormField(
                controller: _colsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Columns"),
                validator: (v) => v!.isEmpty ? "Required" : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: const Text("Preview Seat Layout"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => SeatPreviewScreen(
            rows: int.parse(_rowsController.text),
            cols: int.parse(_colsController.text),
          ),
        ),
      );
    }
  }
}
