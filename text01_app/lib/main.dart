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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Row"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          // 행으로는 Column, 열로는 Row
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("James"),
            SizedBox(
              width: 20,
            ),
            Text("Cathy"),
            SizedBox(
              width: 20,
            ),
            Text("Kenny"),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
