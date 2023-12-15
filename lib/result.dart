
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Your Result"),
        ),
        body: const Column(
          children: [
            SizedBox(height: 40,),
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 40,),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 25,),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Total Right ans",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "50",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Color(0x9A310808),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Total Wrong ans",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(height: 8,),
                              Text(
                                "50",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Your Result",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Text(
                        "A+",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8,),
                        Text(
                          "Finish",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
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
              ],
            )

          ],
        ),
      ),
    );
  }

}