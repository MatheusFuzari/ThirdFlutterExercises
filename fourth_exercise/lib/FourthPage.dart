import 'package:flutter/material.dart';

void main() {
  runApp(const CalcTriangle());
}

class CalcTriangle extends StatelessWidget {
  const CalcTriangle({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalcTrianglePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalcTrianglePage extends StatefulWidget {
  const CalcTrianglePage({super.key, required this.title});
  final String title;

  @override
  State<CalcTrianglePage> createState() => _CalcTrianglePage();
}

class _CalcTrianglePage extends State<CalcTrianglePage> {
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Área do triangulo: " + _result.toString()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _baseController,
                keyboardType: TextInputType.number,
                onChanged: (String value) async {},
                decoration: InputDecoration(
                  hintText: "Base do Triangulo",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                onChanged: (String value) async {},
                decoration: InputDecoration(
                  hintText: "Altura",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = (double.parse(_baseController.text) +
                            double.parse(_heightController.text)) /
                        2;
                  });
                },
                child: Text("Calcular")),
          ],
        ),
      ),
    );
  }
}
