import 'package:akademi_drewer/anasayfa-haberler.dart';
import 'package:flutter/material.dart';

import 'profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oyun Ve Uygulama Akademisi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "FontMenu"),
      home: const Center(
        child: AnaSayfa(
          title: 'Oyun ve Uygulama Akademisi ',
        ),
      ),
    );
  }
}
