import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool clicou = false;

  void alterar() {
    setState(() {
      clicou = !clicou;
      print(clicou);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              alterar();
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.easeIn,
              width: clicou == true ? 200 : 100,
              height: clicou == true ? 200 : 100,
              color: clicou == true ? Colors.blue : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
