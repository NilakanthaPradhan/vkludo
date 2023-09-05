import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var vk = 3;
//     return
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var vk = 4;
  var vk1 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(title: Text('Ludo')),
        body: Center(
          child: Container(
              child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: (() {
                    setState(() {
                      vk = Random().nextInt(6) + 1;
                    });
                  }),
                  child: Image(
                    image: AssetImage('images/vk$vk.jfif'),
                  ),
                ),
              ),
              Expanded(
                // flex: 3,
                child: TextButton(
                    onPressed: (() {
                      vk1 = Random().nextInt(6) + 1;
                    }),
                    child: Image.asset('images/vk$vk1.jfif')),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
