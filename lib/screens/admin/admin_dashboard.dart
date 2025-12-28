import 'package:concertbooker/screens/admin/manage_concert_screen.dart';
import 'package:concertbooker/screens/admin/manage_seat_screen.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "ADMIN MODE",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const ManageConcertScreen(),
              ),
            );
          },
          child: const Text("Manage Concerts"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const ManageSeatScreen(),
              ),
            );
          },
          child: const Text("Manage Seats"),
        ),
      ],
    );
  }
}
