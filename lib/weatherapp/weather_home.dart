import 'package:flutter/material.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 170,

                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "San Fransisco,  CA",
                      style: TextStyle(
                        fontFamily: "Redwing",
                        color: Theme.of(context).colorScheme.background,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),

                Text(
                  "85",
                  style: TextStyle(
                    fontFamily: "Redwing",
                    fontSize: 230,

                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      color: Theme.of(context).colorScheme.primary,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Redwing",
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "PM",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Redwing",
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Low",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "61°",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "High",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "82°",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Feels like",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "71°",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Wind",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "UV Index",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "6",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Humidity",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "62%",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Sunrise",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "6 : 48",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Sunset",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 15,
                              fontFamily: "Redwing",
                            ),
                          ),
                          Text(
                            "7 : 32",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 30,
                              fontFamily: "Redwing",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "50%",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontFamily: "Redwing",
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "MON",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Redwing",
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "40%",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontFamily: "Redwing",
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "TUE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Redwing",
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "60%",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontFamily: "Redwing",
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "WED",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Redwing",
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
