import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(BIMcalculater());
}

class BIMcalculater extends StatelessWidget {
  const BIMcalculater({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.purple),
        ),
      ),
      home: InputPage(),
    );
  }
}
