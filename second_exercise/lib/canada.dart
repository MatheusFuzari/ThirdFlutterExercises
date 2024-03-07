import 'package:flutter/material.dart';

void main() {
  runApp(const CanadaApp());
}

class CanadaApp extends StatelessWidget {
  const CanadaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canada App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const CanadaHomePage(),
    );
  }
}

class CanadaHomePage extends StatefulWidget {
  const CanadaHomePage({super.key});

  @override
  State<CanadaHomePage> createState() => _CanadaHomePage();
}

class _CanadaHomePage extends State<CanadaHomePage> {
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
                      "Poutine!",
                      style: TextStyle(fontSize: 18.2),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 180,
                          child: Image.network(
                            "https://img.taste.com.au/3r1OdF33/w720-h480-cfill-q80/taste/2016/11/poutine-104101-1.jpeg",
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
