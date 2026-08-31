import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/cart_provider.dart';
import 'package:shop_app_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CartProvider()),
      child: MaterialApp(
        title: "Shopping App",
        theme: ThemeData(
          fontFamily: "Archivo",
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: Colors.blue,
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(fontSize: 16),
            prefixIconColor: Colors.blue,
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            bodySmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: "Archivo",
              fontSize: 20,
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
