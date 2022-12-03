import 'package:charts_flutter/flutter.dart' as charts;
import 'package:edo_jobs_portal/models/chart_data.dart';
import 'package:flutter/material.dart';

class Item2 extends StatefulWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  State<Item2> createState() => _Item2State();
}

class _Item2State extends State<Item2> {
  List<DeezerSongModel> genders = [];
  bool loading = true;
  // NetworkHelper _networkHelper = NetworkHelper();
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    // var response = await _networkHelper.get('https://api.genderize.io/?name=male&name%5B%5D=female&');
    //  List<DeezerSongModel> tempdata = deezerSongModelFromJson(response.body);
    //  setState(() {
    //    genders = tempdata;
    //    loading = false;
    //  });
  }
// static final List<SalesData> PoulationData = [
//     SalesData('Agriculture', 35, Colors.cyan),
//     SalesData('Health', 55, Colors.pink),
//     SalesData('Education', 15, Colors.tealAccent),
//     SalesData('Tech', 39, Colors.yellow),
//   ];
  @override
  Widget build(BuildContext context) {
    List<charts.Series<DeezerSongModel, String>> series = [
      charts.Series(
        data: genders,
        id: "Sales Data",
        domainFn: (DeezerSongModel pops, _) => pops.name,
        measureFn: (DeezerSongModel pops, _) => pops.count,
        // colorFn: (DeezerSongModel pops, _)=>charts.ColorUtil.fromDartColor(pops.colorVal)
      )
    ];
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Center(
            child: charts.BarChart(
          series,
          animate: true,
        )

            // ),
            // child: SfCartesianChart(
            //   primaryXAxis: CategoryAxis(),
            //               series: <ColumnSeries<SalesData, String>>[
            //       ColumnSeries<SalesData, String>(
            //         // Bind data source
            //         dataSource:  <SalesData>[
            //           SalesData('Jan', 35),
            //           SalesData('Feb', 28),
            //           SalesData('Mar', 34),
            //           SalesData('Apr', 32),
            //           SalesData('May', 40)
            //         ],
            //         yValueMapper: (SalesData sales, _) => sales.sales,
            //         xValueMapper: (SalesData sales, _) => sales.year
            //       )
            //     ]

            // ),
            ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.colorVal);
  final String year;
  final double sales;
  final Color colorVal;
}
