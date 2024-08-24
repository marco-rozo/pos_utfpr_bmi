import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:utfpr_bmi/bmi_controller.dart';
import 'package:utfpr_bmi/pages/insert_data.dart';
import 'package:utfpr_bmi/pages/result_bmi.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => BMIController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InsertData(),
        '/result': (context) => const ResultBMI()
      },
    );
  }
}
