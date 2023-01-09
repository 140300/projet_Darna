import 'package:flutter/material.dart';
import 'package:projet_mobile/pages/About_us.dart';
import 'package:projet_mobile/pages/Acceuil.dart';
import 'package:projet_mobile/pages/add_article.dart';
import 'package:projet_mobile/pages/mesarticles.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Acceuil(),
        '/Add_article': (context) => const Add_article(),
        '/mesarticles': (context) => const mesarticles(),
        '/About_us': (context) => const About_us(),
      },
    );
  }
}
