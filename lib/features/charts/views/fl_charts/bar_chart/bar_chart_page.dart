import 'package:flutter/material.dart';

import 'samples/bar_chart_sample1.dart';

class BarChartPage extends StatelessWidget {
  const BarChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color(0xff232040),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(28),
          child: BarChartSample1(),
        ),
      ),
    );
  }
}
