import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "click";
  int currentindex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp Title"),
          backgroundColor: Color.fromARGB(255, 76, 69, 183),
        ),
        body: Center(
          child: currentindex == 0 ? Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.orange
                  ),
                  onPressed: () {
                    setState(() {
                      buttonName = "clicked";
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = "clicked";
                    });
                  },
                  child: Text(buttonName),
                )
              ],
            ),
          ) :  Image.asset("images/wp2647032.jpg"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "setting",
              icon: Icon(Icons.settings),
            )
          ],
          currentIndex: currentindex,
          onTap: (int index) {
            setState(
              () {
                currentindex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
