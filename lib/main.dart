import 'package:flutter/material.dart';
import 'package:mi/components/models/cartmodel.dart';
import 'package:mi/pages/landing.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cartmodel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Landing(),
      ),
    );
  }
}
