import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 75, 183, 58)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var names = ["Robiul", "Argha", "Rejaul", "Baharul", "Raihan"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Text("Container - 1"),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Text("Container - 2"),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Text("Container - 3"),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
                child: Container(
              width: 100,
              height: 100,
              color: Colors.black,
              child: Text(
                "Container - 4",
                style: TextStyle(color: Color.fromARGB(219, 34, 209, 11)),
              ),
            ))
          ],
        ));
  }
}
