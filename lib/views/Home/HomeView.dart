import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const colDivider = SizedBox(height: 10);
const rowDivider = SizedBox(width: 20);

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                margin: EdgeInsets.zero,
                elevation: 0,
                color: Theme.of(context)
                    .colorScheme
                    .surfaceVariant
                    .withOpacity(0.3),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                  child: Column(
                    children: [
                      Text("Dispositivos",
                          style: Theme.of(context).textTheme.titleLarge),
                      colDivider,
                      SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          // Chart title
                          title: ChartTitle(text: 'Half yearly sales analysis'),
                          // Enable legend
                          legend: Legend(isVisible: true),
                          // Enable tooltip
                          tooltipBehavior: _tooltipBehavior,
                          series: <LineSeries<SalesData, String>>[
                            LineSeries<SalesData, String>(
                                dataSource: <SalesData>[
                                  SalesData('Jan', 35),
                                  SalesData('Feb', 28),
                                  SalesData('Mar', 34),
                                  SalesData('Apr', 32),
                                  SalesData('May', 40)
                                ],
                                xValueMapper: (SalesData sales, _) =>
                                    sales.year,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sales,
                                // Enable data label
                                dataLabelSettings:
                                    const DataLabelSettings(isVisible: true))
                          ])
                    ],
                  ),
                )),
          ],
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
