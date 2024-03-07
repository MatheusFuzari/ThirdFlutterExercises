import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

enum MaritalStatus { solteiro, casado, divorciado, viuvo }

enum Gender { masculino, feminino, outro }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MaritalStatus? _status = MaritalStatus.solteiro;
  Gender? _gender = Gender.outro;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                hintText: 'Enter your name',
              )),
            ),
            Text("Estado civíl: "),
            Container(
              width: 200,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioListTile<MaritalStatus>(
                      title: const Text("Solteiro(a)"),
                      value: MaritalStatus.solteiro,
                      groupValue: _status,
                      onChanged: (MaritalStatus? value) {
                        setState(() {
                          _status = value;
                        });
                      }),
                  RadioListTile<MaritalStatus>(
                      title: const Text("Casado(a)"),
                      value: MaritalStatus.casado,
                      groupValue: _status,
                      onChanged: (MaritalStatus? value) {
                        setState(() {
                          _status = value;
                        });
                      }),
                  RadioListTile<MaritalStatus>(
                      title: const Text("Divorciado(a)"),
                      value: MaritalStatus.divorciado,
                      groupValue: _status,
                      onChanged: (MaritalStatus? value) {
                        setState(() {
                          _status = value;
                        });
                      }),
                  RadioListTile<MaritalStatus>(
                      title: const Text("Viúvo(a)"),
                      value: MaritalStatus.viuvo,
                      groupValue: _status,
                      onChanged: (MaritalStatus? value) {
                        setState(() {
                          _status = value;
                        });
                      }),
                ],
              ),
            ),
            Text("Gênero: "),
            Container(
                width: 200,
                alignment: Alignment.centerLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadioListTile<Gender>(
                          title: const Text("Masculino"),
                          value: Gender.masculino,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          }),
                      RadioListTile<Gender>(
                          title: const Text("Fêminino"),
                          value: Gender.feminino,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          }),
                      RadioListTile<Gender>(
                          title: const Text("Outro"),
                          value: Gender.outro,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          }),
                    ])),
          ],
        ),
      ),
    );
  }
}
