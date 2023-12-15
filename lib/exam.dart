import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Question"),
        ),
        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              color: Colors.tealAccent,

              child: const Row(

                children: [
                  SizedBox(width: 15,),
                  Text(
                    "00:10:10",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "(10/60)",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(width: 15,),

                ],
              ),
            ),
            const SizedBox(height: 45,),
            const Text(
              "This is a question??",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20,),
            Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Option 1"),
                    leading: Radio(
                      value: 0,
                      groupValue: 0,
                      onChanged: (value) {
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Option 2"),
                    leading: Radio(
                      value: 0,
                      groupValue: 0,
                      onChanged: (value) {
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Option 3"),
                    leading: Radio(
                      value: 0,
                      groupValue: 0,
                      onChanged: (value) {
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Option 4"),
                    leading: Radio(
                      value: 0,
                      groupValue: 0,
                      onChanged: (value) {
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Option 5"),
                    leading: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){},
              child: const SizedBox(
                width: 100,
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.navigate_next_rounded,
                      color: Colors.blue,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

