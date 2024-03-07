import 'package:flutter/material.dart';

void main() {
  runApp(const BrazilApp());
}

class BrazilApp extends StatelessWidget {
  const BrazilApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brazil App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BrazilHomePage(),
    );
  }
}

class BrazilHomePage extends StatefulWidget {
  const BrazilHomePage({
    super.key,
  });

  @override
  State<BrazilHomePage> createState() => _BrazilHomePage();
}

class _BrazilHomePage extends State<BrazilHomePage> {
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
                      "Feijoada!",
                      style: TextStyle(fontSize: 18.2),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 180,
                          child: Image.network(
                            "https://istoe.com.br/wp-content/uploads/2022/06/feij.jpg",
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
