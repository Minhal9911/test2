import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 330,
              width: 220,
              padding: const EdgeInsets.only(
                  top: 70, left: 40, right: 20, bottom: 20),
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.redAccent.shade200,
                        Colors.redAccent.shade100,
                      ]),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100.0),
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Breakfast',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  const Text(
                    "Bread,",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Peanut butter,",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Apple",
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        "525",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "kcal",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end,
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: -10.0,
              top: -40.0,
              child: Container(
                height: 150,
                width: 150,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.28),
                ),
                child: Image.asset(
                  "assets/breakfaser-removebg-preview.png",
                  fit: BoxFit.fill,
                  height: 20,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
