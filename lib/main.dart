// import "dart:ui_web";

import "package:app/home.dart";
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
          title: const Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Get.to(
                    
                    //   Home(),
                    //   fullscreenDialog: true,
                    //   transition: Transition.zoom,
                    //   duration: Duration(milliseconds: 4000),
                    //   curve: Curves.bounceOut,
                    // );

                    Get.to(Home(), arguments: "This is a text from main.dart");
                  },
                  child: Text("Go To Home")),
            ],
          ),
        ));
  }
}
