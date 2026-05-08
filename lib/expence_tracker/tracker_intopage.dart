import 'dart:async';
import 'package:all_ui/expence_tracker/expence_main.dart';
import 'package:flutter/material.dart';

class TrackerIntopage extends StatefulWidget {
  const TrackerIntopage({super.key});

  @override
  State<TrackerIntopage> createState() => _TrackerIntopageState();
}

class _TrackerIntopageState extends State<TrackerIntopage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ExpenceMain()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 150),
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset('assets/netflix ui/car.png',fit: BoxFit.cover,),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Buy now with",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "financial",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Text(
                        "intelligence",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FL",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 120,
                      letterSpacing: 8,
                      fontFamily: "Redwing",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "ex",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 110,
                      letterSpacing: 8,
                      fontFamily: "Redwing",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "lQ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 120,
                      letterSpacing: 8,
                      fontFamily: "Redwing",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
