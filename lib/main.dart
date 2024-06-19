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
          title: Text("Dialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Get.defaultDialog();
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 25),
                      middleText: "This is middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      backgroundColor: Colors.purple,
                      radius: 60,
                      content: const Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(child: Text("Data Loading"))
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.green,
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Action-1")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Action-2"))
                      ],
                      barrierDismissible: false,
                    );
                  },
                  child: const Text("Show Dialog"))
            ],
          ),
        ));
  }
}
