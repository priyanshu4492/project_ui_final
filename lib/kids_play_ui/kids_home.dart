import 'package:all_ui/kids_play_ui/icons_container.dart';
import 'package:flutter/material.dart';

class KidsHomePage extends StatelessWidget {
  const KidsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //hello coco container
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 12, right: 12),
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 245, 188, 55),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Coco",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Let's Play!",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),

                    Icon(Icons.home, size: 70,color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          //icons sections
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconsContainer(
                  col: const Color.fromARGB(255, 242, 224, 202),
                  name: "Story",
                  conicon: Icon(
                    Icons.play_circle,
                    size: 70,
                    color: const Color.fromARGB(255, 129, 134, 136),
                  ),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 214, 232, 247),
                  name: "Story",
                  conicon: Icon(
                    Icons.golf_course,
                    size: 70,
                    color: Colors.lightBlue,
                  ),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 237, 190, 246),
                  name: "Story",
                  conicon: Icon(
                    Icons.time_to_leave,
                    size: 70,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconsContainer(
                  col: const Color.fromARGB(255, 186, 247, 218),
                  name: "Story",
                  conicon: Icon(Icons.telegram, size: 70, color: Colors.green),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 243, 203, 217),
                  name: "Story",
                  conicon: Icon(Icons.car_crash, size: 70, color: Colors.pink),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 192, 242, 248),
                  name: "Story",
                  conicon: Icon(
                    Icons.cabin,
                    size: 70,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconsContainer(
                  col: const Color.fromARGB(255, 187, 199, 241),
                  name: "Story",
                  conicon: Icon(
                    Icons.holiday_village,
                    size: 70,
                    color: Colors.deepPurple,
                  ),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 240, 210, 166),
                  name: "Story",
                  conicon: Icon(Icons.book, size: 70, color: Colors.brown),
                ),
                IconsContainer(
                  col: const Color.fromARGB(255, 182, 215, 242),
                  name: "Story",
                  conicon: Icon(
                    Icons.phone,
                    size: 70,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ],
            ),
          ),

          //bottom navbar
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 188, 55),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.home, size: 70, color: Colors.red),
                    Icon(Icons.star, size: 70, color: Colors.white),
                    Icon(Icons.settings, size: 70, color: Colors.white),
                    Icon(Icons.person, size: 70, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
