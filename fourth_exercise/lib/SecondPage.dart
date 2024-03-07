import 'package:flutter/material.dart';

void main() {
  runApp(const CalcTrapeze());
}

class CalcTrapeze extends StatelessWidget {
  const CalcTrapeze({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalcTrapezePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalcTrapezePage extends StatefulWidget {
  const CalcTrapezePage({super.key, required this.title});
  final String title;

  @override
  State<CalcTrapezePage> createState() => _CalcTrapezePage();
}

class _CalcTrapezePage extends State<CalcTrapezePage> {
  final TextEditingController _baseMajorController = TextEditingController();
  final TextEditingController _baseMinorController = TextEditingController();
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
            Text("Área do trapézio: " + _result.toString()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _baseMajorController,
                keyboardType: TextInputType.number,
                onChanged: (String value) async {},
                decoration: InputDecoration(
                  hintText: "Base Maior",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _baseMinorController,
                keyboardType: TextInputType.number,
                onChanged: (String value) async {},
                decoration: InputDecoration(
                  hintText: "Base Menor",
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
                    _result = ((double.parse(_baseMajorController.text) +
                                double.parse(_baseMinorController.text)) *
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
