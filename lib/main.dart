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
  @override
  Widget build(BuildContext context) {
    bool isBig = false;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Header propre sans Flexible forcé
            Container(
              height: 120,
              color: Colors.blue,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Mamoudou Togo",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: Icon(Icons.wifi_off, size: 20, color: Colors.red),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/icon/icon.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    right: 10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Cliock"),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: isBig ? 200 : 100,
              height: 100,
              color: isBig ? Colors.red : Colors.green,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isBig = !isBig;
                });
              },
              child: Text("Changez"),
            ),
          ],
        ),
      ),
    );
  }
}
