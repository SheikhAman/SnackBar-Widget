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
      ),
      home: SnackPage(),
    );
  }
}

class SnackPage extends StatefulWidget {
  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<SnackPage> {
  GlobalKey<ScaffoldState> _key = GlobalKey();

  SnackBar _snackAction() => SnackBar(
        content: Text(
          "SnackBar for Flutter UI Catalog",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        action: SnackBarAction(
          label: "OK!",
          textColor: Colors.white,
          disabledTextColor: Colors.black,
          onPressed: () {
            print("SnackBar!");
          },
        ),
        backgroundColor: Colors.orange,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackAction());
            },
            child: const Text("Show the snack bar"),
          ),
        ));
  }
}
