
import 'package:client_project/admin_panel.dart';
import 'package:flutter/material.dart';

class Problem extends StatelessWidget{
  const Problem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
          centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AdminPanel();
                  }));
                },
                child: Container(
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: const BorderRadius.all(
                        Radius.circular(5)
                    ),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                  ),

                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "This is topic 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "you added 55 question in this topic",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AdminPanel();
                  }));
                },
                child: Container(
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[50],
                    borderRadius: const BorderRadius.all(
                        Radius.circular(5)
                    ),
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),

                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "This is topic 2",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "you added 65 question in this topic",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AdminPanel();
                  }));
                },
                child: Container(
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.amber[100],
                    borderRadius: const BorderRadius.all(
                        Radius.circular(5)
                    ),
                    border: Border.all(
                      color: Colors.amber,
                      width: 2,
                    ),
                  ),

                  child: const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "This is topic 3",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "you added 43 question in this topic",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This is topic 4",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "you added 13 question in this topic",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This is topic 5",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "you added 67 question in this topic",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This is topic 6",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "you added 8 question in this topic",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: const BorderRadius.all(
                      Radius.circular(5)
                  ),
                  border: Border.all(
                    color: Colors.green,
                    width: 2,
                  ),
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This is topic 7",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "you added 10 question in this topic",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}