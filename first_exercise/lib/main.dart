import 'package:flutter/material.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.factory),
            icon: Icon(Icons.factory_outlined),
            label: 'Industría',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.agriculture),
            icon: Icon(Icons.agriculture_outlined),
            label: 'Agricultura',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.local_hospital_outlined),
            icon: Icon(Icons.local_hospital),
            label: 'Saúde',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.money_outlined),
            icon: Icon(Icons.money),
            label: 'Ecônomia',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Indústria',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// agriculture page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Agricultura',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// health page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Saúde',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Economy page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Ecônomia',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
