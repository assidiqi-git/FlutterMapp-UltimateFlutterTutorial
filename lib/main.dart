import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        drawer: SafeArea(
          child: Drawer(
            child: Column(
              children: [
                DrawerHeader(child: Text('Drawer Header')),
                ListTile(title: Text('Logout')),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int index) {},
        ),
      ),
    );
  }
}
