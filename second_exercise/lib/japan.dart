import 'package:flutter/material.dart';

void main() {
  runApp(const JapanApp());
}

class JapanApp extends StatelessWidget {
  const JapanApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Japan App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const JapanHomePage(),
    );
  }
}

class JapanHomePage extends StatefulWidget {
  const JapanHomePage({super.key});

  @override
  State<JapanHomePage> createState() => _JapanHomePage();
}

class _JapanHomePage extends State<JapanHomePage> {
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
                      "Sushi!",
                      style: TextStyle(fontSize: 18.2),
                    ),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 180,
                          width: 180,
                          child: Image.network(
                            "https://www.sp.br.emb-japan.go.jp/files/000567285.jpg",
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
