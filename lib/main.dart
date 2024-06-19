// import "dart:ui_web";

import "package:app/main.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "FlutterApp",
      theme: ThemeData(primaryColor: Colors.red),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                        Wrap(
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.wb_sunny_outlined),
                              title: Text("Light Theme"),
                              onTap: () => {Get.changeTheme(ThemeData.light())},
                            ),
                            ListTile(
                              leading: const Icon(Icons.wb_sunny),
                              title: const Text("Dark Theme"),
                              onTap: () => {Get.changeTheme(ThemeData.dark())},
                            )
                          ],
                        ),
                        // barrierColor: Colors.greenAccent.shade100,
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0)),
                        enableDrag: false);
                  },
                  child: const Text("Bottom Sheet"))
            ],
          ),
        ));
  }
}
