//JOHN PATRICK M. SALANGSANG
import 'package:flutter/material.dart';
import 'screens/soc-csc.dart';
import 'screens/ap.dart';
import 'screens/codegeeks.dart';
import 'screens/sana.dart';
import 'screens/loop.dart';
import 'screens/igoara.dart';

void main() {
  runApp(const SocProg());
}

class SocProg extends StatelessWidget {
  const SocProg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Voting App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("School of Computing Student Organization",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoReg",
                  color: Colors.brown,)),
          backgroundColor: Colors.orangeAccent,
        ),
        body: const Material(
            color: Colors.amberAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  CSC(),
                  AP(),
                  LOOP(),
                  SANA(),
                  WEBDEV(),
                  IGOARA(),
                  Text("Developed by JP Salangsang",
                    style: TextStyle(fontSize: 15,
                      fontFamily: "RobotoReg"))
                ],
              ),
            )
          )
        )
      );
  }
}
