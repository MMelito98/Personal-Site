import 'package:flutter/material.dart';
import 'package:personal_site/projects_page.dart';
import 'home_page.dart';
import 'libro_service_url_page.dart';
import 'material_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/':(context) => MyHomePage(),
        "/LibroService": (context )=> LibroServideUrlPage(),
      },
      title: 'Melitocreates.com',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        useMaterial3: true,
      ),
    );
  }
}

