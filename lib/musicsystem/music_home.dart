import 'package:flutter/material.dart';

class MusicHome extends StatelessWidget {
  const MusicHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF268F),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //starting icon
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade300,
                      ),
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink.shade300,
                      ),
                      child: Icon(Icons.home, color: Colors.white),
                    ),
                  ],
                ),
              ),

              Image.asset('assets/netflix ui/tron.jpg',height: 200,width: 200,),

              Text(
                "Star Boy",
                style: TextStyle(
                  fontFamily: "Redwing",
                  fontSize: 30,
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              Text(
                "The Weeknd",
                style: TextStyle(
                  fontFamily: "Redwing",
                  fontSize: 20,
                  letterSpacing: 10,
                  color: Colors.white,
                ),
              ),
              Text(
                "1999 LeoNardo Massup",
                style: TextStyle(
                  fontFamily: "Redwing",
                  fontSize: 10,
                  wordSpacing: 4,
                  color: Colors.white,
                ),
              ),

              //suffle play add
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(Icons.shuffle, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 186, 217),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.play_arrow, size: 30),
                            ),
                            Text(" Play", style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white, size: 30),
                    ),
                  ),
                ],
              ),

              //lyrics
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Walking through the city in the pouring rain ,neon lights dancing on the windowpane,",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Redwing",
                    letterSpacing: 2,
                  ),
                ),
              ),

              Text(
                "Star Boy (Walking through the city)    ...",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 20),
              Text(
                "Party Monster (Party all the day night)    ...",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 98, 219),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/netflix ui/dark.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "Star Boy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Redwing",
                                  letterSpacing: 2,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                   Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 98, 219),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.home, color: Colors.white, size: 40),
                              Text("Home", style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.music_note, color: Colors.white, size: 40),
                              Text("Music", style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.radio, color: Colors.white, size: 40),
                              Text("Radio", style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.library_add, color: Colors.white, size: 40),
                              Text("Liberary", style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 98, 219),
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Icon(Icons.search,color: Colors.white,size: 40,),),
                                        
                      ),
                    )
                  ],
                  ),
                )
              

              
            ],
          ),
        ],
      ),
    );
  }
}
