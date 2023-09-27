import 'package:flutter/material.dart';
import 'package:tradinganalysis/View/navbar.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/image/1.gif'),
            const Column(
              children: [
                Text(
                  'The Future',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Lean more about Trading',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: myWidth * 0.14),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffFBC700),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: myWidth * 0.05, vertical: myHeight * 0.013),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavBar()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CREATE PORTFOLIO',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(310 / 360),
                          child: Icon(Icons.arrow_forward_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
