import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Page2());
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool clicou = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InkWell(
          onTap: () {
            setState(() {
              clicou = !clicou;
              print(clicou);
            });
          },
          child: AnimatedAlign(
            alignment:
                clicou == true ? Alignment.bottomLeft : Alignment.topRight,
            duration: Duration(seconds: 1),
            curve: Curves.bounceInOut,
            child: Container(width: 100, height: 100, color: Colors.purple),
          ),
        ),
      ),
    );
  }
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
              duration: Duration(seconds: 2),
              curve: Curves.decelerate,
              width: clicou == true ? 200 : 100,
              height: clicou == true ? 200 : 100,
              decoration: BoxDecoration(
                color: clicou == true ? Colors.blue : Colors.red,
                borderRadius:
                    clicou == true
                        ? BorderRadius.all(Radius.circular(0))
                        : BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
