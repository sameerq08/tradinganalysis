import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: myHeight,
      width: myWidth,
      child: Column(
        children: [
          Image.asset('assets/image/1.gif'),
          Text(
            'The Future',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lean more about Trading',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
