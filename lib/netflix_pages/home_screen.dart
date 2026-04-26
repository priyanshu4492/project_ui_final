import 'package:all_ui/netflix_pages/container.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "tv"),
          
         
        ],
      ),
      body: Container(
        height: 1500,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            colors: [const Color.fromARGB(255, 18, 102, 170), Colors.black],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // background big image and play button
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20,color: Colors.blue,
                          spreadRadius: 15

                        )
                      ]
                    ),
                    child: Image.asset(
                      'assets/netflix ui/god.jpg',
                      height: 500,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.play_arrow, color: Colors.blue, size: 60),
                        Icon(Icons.notifications, color: Colors.grey, size: 50),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 250,
                    left: 170,
                    child: Center(
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //movie text
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Godzilla x Kong: The New Empire",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //button section
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          "Action",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "2024",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Adventure",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //listview
              SizedBox(
                height: 140,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('assets/netflix ui/revenent.jpg', width: 100),
                      Image.asset('assets/netflix ui/ender.jpg', width: 100),
                      Image.asset('assets/netflix ui/tron.jpg', width: 100),
                      Image.asset('assets/netflix ui/dark.jpg', width: 100),
                      Image.asset('assets/netflix ui/wik.jpg', width: 100),
                    ],
                  ),
                ),
              ),

              //text
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "|  Top 10 Movies This Week",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ],
                ),
              ),

              //listview
              SizedBox(
                height: 140,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset('assets/netflix ui/wik.jpg', width: 100),
                      Image.asset('assets/netflix ui/dark.jpg', width: 100),
                      Image.asset('assets/netflix ui/tron.jpg', width: 100),
                      Image.asset('assets/netflix ui/god.jpg', width: 100),
                      Image.asset('assets/netflix ui/revenent.jpg', width: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
