import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDashboardView extends StatelessWidget {
  const UserDashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: Column(
        children: [
          const Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/no_img.jpg"),
              ),
              SizedBox(height: 10),
              Text(
                "User",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text("user@gmail.com"),
            ],
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              Text(
                "You Passed ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ),
              ),
              Text(
                " Exams",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            //========================================================================================Lesson count
            children: List.generate(5, (index) {
              return Expanded(
                child: Container(
                  height: 7,
                  width: 10,
                  margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? Colors.blue : Colors.black12),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return const SizedBox(
                  height: 210,
                  child: Card(//============================================List item start
                    shadowColor: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Icon(Icons.play_arrow_rounded, size: 70),
                          SizedBox(height: 15),
                          Text(
                            "Let's start (Lesson 1)",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(height: 10,),
                          SizedBox(
                            height:20,
                            child: Text(
                              "Has more than 100 Questions",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.ant), label: "Ant"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.archivebox), label: "Draft"),
          ]),
    );
  }
}