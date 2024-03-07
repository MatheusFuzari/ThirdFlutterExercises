import 'package:flutter/material.dart';

void main() {
  runApp(const EnglandApp());
}

class EnglandApp extends StatelessWidget {
  const EnglandApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'England App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const EnglandHomePage(),
    );
  }
}

class EnglandHomePage extends StatefulWidget {
  const EnglandHomePage({super.key});

  @override
  State<EnglandHomePage> createState() => _EnglandHomePage();
}

class _EnglandHomePage extends State<EnglandHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 320,
              width: 320,
              color: Colors.grey[100],
              alignment: Alignment.center,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Fish and Chips!",
                      style: TextStyle(fontSize: 18.2),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 180,
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Fish_and_chips_blackpool.jpg/800px-Fish_and_chips_blackpool.jpg",
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
