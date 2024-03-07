import 'package:flutter/material.dart';
import 'package:fourth_exercise/FourthPage.dart';
import 'package:fourth_exercise/SecondPage.dart';
import 'package:fourth_exercise/ThirdPage.dart';

void main() {
  runApp(const CalcHeight());
}

class CalcHeight extends StatelessWidget {
  const CalcHeight({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalcHeightPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalcHeightPage extends StatefulWidget {
  const CalcHeightPage({super.key, required this.title});
  final String title;

  @override
  State<CalcHeightPage> createState() => _CalcHeightPage();
}

class _CalcHeightPage extends State<CalcHeightPage> {
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double _result = 0;
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const CalcTrianglePage(title: 'Triangulo page'),
    const CalcTrapezePage(title: 'Trapézio page'),
    const CalcOhmPage(title: '1° Lei de Ohm'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: buildNavigator(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task_rounded), label: "Triângulo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task_rounded), label: "Trapézio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_task_rounded), label: "Ohm")
        ],
        selectedItemColor: Colors.cyan,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}
