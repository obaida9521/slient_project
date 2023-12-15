import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   Result({Key? key}) : super(key: key);

  Map<String, double> dataMap = {
    "Very good": 18.47,
    "Good": 17.70,
    "Not bad": 4.25,
    "Bad": 3.51,
  };

  List<Color> colorList = [
    const Color(0xff62ab10),
    const Color(0xffc8d547),
    const Color(0x9eff1e17),
    const Color(0xffee251d),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Result Dashboard"),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 30,),
              const Text(
                "Congratulations",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 175,
                            height: 100,
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
                                  "Total Write ans",
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
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                           const SizedBox(
                            height: 110,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            width: 175,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(5)
                              ),
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            child: const Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Wrong ans",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Text(
                                  "50",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Your Result",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                "A+",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: PieChart(
                  dataMap: dataMap,
                  colorList: colorList,
                  chartRadius: MediaQuery.of(context).size.width / 3,
                  centerText: "Result",
                  ringStrokeWidth: 25,
                  chartType: ChartType.ring,
                  initialAngleInDegree: 10,
                  centerTextStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                  animationDuration: const Duration(seconds: 1),
                  chartValuesOptions: const ChartValuesOptions(
                      showChartValues: true,
                      showChartValuesOutside: true,
                      showChartValuesInPercentage: true,
                      showChartValueBackground: false,
                  ),
                  legendOptions: const LegendOptions(
                      showLegends: true,
                      legendShape: BoxShape.rectangle,
                      legendTextStyle: TextStyle(fontSize: 17),
                      legendPosition: LegendPosition.bottom,
                      showLegendsInRow: true),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 5, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4)
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Review",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Icon(
                                  Icons.autorenew_rounded,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 20, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Finish',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.blue,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
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