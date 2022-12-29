import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loading_indicator/loading_indicator.dart';

import 'views/loading_animation_demo.dart';
import 'views/loading_indicator_demo.dart';

const List<Color> _kDefaultRainbowColors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];

class LoadingIndicatorPage extends StatefulWidget {
  const LoadingIndicatorPage({super.key});

  @override
  State<LoadingIndicatorPage> createState() => _LoadingIndicatorPageState();
}

class _LoadingIndicatorPageState extends State<LoadingIndicatorPage> {
  late PageController controller;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loading Indicators',
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
          controller.jumpToPage(value);
        },
        destinations: [
          NavigationDestination(
            icon: LoadingAnimationWidget.beat(
              color: Colors.white,
              size: 18,
            ),
            label: 'loading_animation_widget',
          ),
          NavigationDestination(
            icon: SizedBox(
              height: 18,
              child: LoadingIndicator(
                indicatorType: Indicator.values[16],
                strokeWidth: 3,
                pause: false,
                colors: _kDefaultRainbowColors,
                // pathBackgroundColor: Colors.black45,
              ),
            ),
            label: 'loading_indicator',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  LoadingAnimationDemo(),
                  LoadingIndicatorDemo(
                    colors: _kDefaultRainbowColors,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
