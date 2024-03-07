import 'package:flutter/material.dart';

void main() {
  runApp(const CalcOhm());
}

class CalcOhm extends StatelessWidget {
  const CalcOhm({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalcOhmPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalcOhmPage extends StatefulWidget {
  const CalcOhmPage({super.key, required this.title});
  final String title;

  @override
  State<CalcOhmPage> createState() => _CalcOhmPage();
}

class _CalcOhmPage extends State<CalcOhmPage> {
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
            Text("1° Lei de Ohm: " + _result.toString()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _baseController,
                keyboardType: TextInputType.number,
                onChanged: (String value) async {},
                decoration: InputDecoration(
                  hintText: "Resistência Elétrica",
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
                  hintText: "Corrente Elétrica",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = (double.parse(_baseController.text) *
                        double.parse(_heightController.text));
                  });
                },
                child: Text("Calcular")),
          ],
        ),
      ),
    );
  }
}
