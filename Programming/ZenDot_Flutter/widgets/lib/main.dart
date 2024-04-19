import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("R1"),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Button1")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Button2")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Button3")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Button4")),
                  ],
                ),
                const Text("R2"),
                const Text("R3")
              ],
            ),
            const Text(
              "A",
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              "B",
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              "C",
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              "D",
              style: TextStyle(fontSize: 40),
            ),
            const Text(
              "E",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Click!"))
          ],
        ));
  }
}
