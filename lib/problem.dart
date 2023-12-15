

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Problem extends StatelessWidget{
  const Problem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.green,
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
                "Total Wrong ans",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.green,
                ),
              ),
              Text(
                "50",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 102,
          child: VerticalDivider(
            thickness: 1,
            color: Colors.lightGreen,
          ),
        ),
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
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
                "Total wrong",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                "50",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}