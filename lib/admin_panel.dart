
import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Topic 1"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add Question",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Question",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.question_answer_sharp),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Option A",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.radio_button_checked_outlined),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Option B",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.radio_button_checked_outlined),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Option C",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.radio_button_checked_outlined),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Option D",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.radio_button_checked_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                TextButton(
                  onPressed: (){

                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                    child: const Text(
                      "Upload",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
