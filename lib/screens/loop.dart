import 'package:flutter/material.dart';

class LOOP extends StatefulWidget {
  const LOOP({super.key});

  @override
  State<LOOP> createState() => LOOPState();
}

class LOOPState extends State<LOOP> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 325,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(image: AssetImage("images/LOOP.png"), height: 50, width: 50),
          const Text("BS Computer Science",
              style: TextStyle(fontFamily: "RobotoMedium", fontSize: 15, color: Colors.deepOrangeAccent)),
          IconButton(
            icon: const Icon(Icons.thumb_up_sharp),
            color: Colors.deepOrange,
            onPressed: () {
              increment();
            },
          ),
          Text("$counter",
            style: const TextStyle(fontSize: 15, color: Colors.deepOrangeAccent, fontFamily: "RobotoReg"))
        ],
      ),
    );
  }
}
