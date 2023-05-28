import 'package:flutter/material.dart';
import 'package:lamp_app/src/common/lamp_theme.dart';
import 'package:lamp_app/src/pages/lamp_page.dart';
import 'package:lamp_app/src/provider/lightbulb_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: LampTheme.light,
      home: ChangeNotifierProvider(
        create: (context) => LightbulbProvider(),
        child: const LampPage(),
      ),
    );
  }
}
