// @Responsable -> Alcántara Chávez Samuel

//Flutter
import 'package:flutter/material.dart';
//Packages
import 'package:provider/provider.dart';
// Owned
import 'providers/emotion_provider.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyAppState());

class MyAppState extends StatelessWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => EmotionProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home_screen',
      debugShowCheckedModeBanner: false,
      routes: {
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
