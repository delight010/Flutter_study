import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText = "Hello";
  Color _color = Colors.blue; // _(언더바)는 Private

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change button color & text"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(_color) // 변수의 컬러값 적용
                  ),
              onPressed: () {
                if (_color == Colors.blue) {
                  setState(() {
                    // 상태 변경하는 메소드
                    buttonText = "Flutter";
                    _color = Colors.amber;
                  });
                } else {
                  setState(() {
                    buttonText = "Hello";
                    _color = Colors.blue;
                  });
                }
              },
              child: Text('$buttonText'),
            ) // 변수값 적용
          ],
        ),
      ),
    );
  }
}
