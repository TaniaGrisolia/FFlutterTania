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
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 250, 194, 245)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Final'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
          'Tania Ileana Grisolia Ventolero',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
          ),
          Center(
            child: SizedBox(
              height: 500.0,
              width: 700.0,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0b1nEc5SzSJE_AIJnJBKPj6bQwxr3Wkm-tCeBVNcDGQ&s'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}