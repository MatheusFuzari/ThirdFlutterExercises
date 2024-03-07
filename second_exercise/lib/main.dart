import 'package:flutter/material.dart';
import 'package:second_exercise/brazil.dart';
import 'package:second_exercise/canada.dart';
import 'package:second_exercise/inglaterra.dart';
import 'package:second_exercise/japan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Comidas Típicas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const BrazilHomePage(),
    const CanadaHomePage(),
    const JapanHomePage(),
    const EnglandHomePage()
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
            icon: Icon(Icons.flag),
            label: "Brasil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Canada",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Japão",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Inglaterra",
          )
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
