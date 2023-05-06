import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Timer? _timer;

  //increase the value of the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //reset the counter value to 0-
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            GestureDetector(
              onLongPress: () {
                _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
                  _incrementCounter();
                });
              },
              onLongPressUp: () {
                _timer?.cancel();
              },
              child: ElevatedButton(
                child: const Text("Increase"),
                onPressed: () => _incrementCounter(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                child: const Text("Reset"), onPressed: () => _reset())
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
