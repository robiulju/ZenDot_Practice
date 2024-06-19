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
          title: Text("DashBoardScreen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        "Snackbar Title", "This will be snackbar message",
                        snackPosition: SnackPosition.BOTTOM,
                        // titleText: Text("Another Title"),
                        // messageText: Text(
                        //   "Another Message",
                        //   style: TextStyle(color: Color.fromARGB(255, 12, 222, 40)),
                        // ),

                        colorText: Colors.red,
                        backgroundColor: Colors.amberAccent,
                        borderRadius: 30,
                        margin: const EdgeInsets.all(10),
                        maxWidth: 700,
                        animationDuration: const Duration(milliseconds: 3000),
                        backgroundGradient: const LinearGradient(colors: [
                          Colors.red,
                          Color.fromARGB(255, 23, 235, 12)
                        ]),
                        borderColor: Colors.black,
                        borderWidth: 5,
                        boxShadows: const [
                          BoxShadow(
                              color: Colors.pink,
                              offset: Offset(30, 50),
                              spreadRadius: 20,
                              blurRadius: 8)
                        ],
                        isDismissible: true,
                        // forwardAnimationCurve: Curves.bounceInOut,
                        // duration: const Duration(milliseconds: 8000),
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        // leftBarIndicatorColor: Colors.white,
                        shouldIconPulse: false,
                        mainButton:
                            TextButton(onPressed: () {}, child: Text("Retry")));
                  },
                  child: const Text("Show Snackbar")),
              // OnTap: (val){
              //   print("Snackbar Clicked");
              // }

              
            ],
            
          ),
        ));
  }
}
