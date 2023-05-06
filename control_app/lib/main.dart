import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _color1 = Colors.red;
  Color _color2 = Colors.blue;
  Color _color3 = Colors.green;

  bool _pressed = false;
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _count++;
                });
                print(_count);
              },
              child: Container(
                color: _color1,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _count++;
                });
                print(_count);
              },
              child: Container(
                color: _color2,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _count++;
                });
                print(_count);
              },
              onLongPress: () {
                _pressed = true;
                setState(() {
                  while (_pressed) {
                    _count++;
                    print(_count);
                  }
                });
              },
              onTapUp: (details) {
                setState(() {
                  _pressed = false;
                });
              },
              child: Container(
                color: _color3,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
