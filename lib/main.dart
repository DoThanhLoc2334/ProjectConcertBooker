import 'package:concertbooker/ConcertDetail.dart';
import 'package:flutter/material.dart';
import 'app_state.dart';
import 'screens/home_screen.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home: const HomeScreen(),
    );
  }
}
