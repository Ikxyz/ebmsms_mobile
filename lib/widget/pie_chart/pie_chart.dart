import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Charty extends StatelessWidget {
  Charty({Key? key}) : super(key: key);
  Map<String, double> dataMap = {"Female": 55, "Male": 45};
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: Column(
            children: [
              Text('Population of verified People'),
              SizedBox(
                height: 10,
              ),
              PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                // chartLegendSpacing: 32,
                initialAngleInDegree: 0,
                chartType: ChartType.disc,

                chartRadius: MediaQuery.of(context).size.width / 1.2,
                legendOptions:
                    LegendOptions(legendPosition: LegendPosition.right),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  // decimalPlaces: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
