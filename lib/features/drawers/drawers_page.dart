import 'package:flutter/material.dart';
import 'package:scale3c_examples/features/drawers/views/zoom_demo.dart';

import 'views/advanced_demo.dart';
import 'views/backdrop_demo.dart';
import 'views/slider_demo.dart';

class DrawersPage extends StatefulWidget {
  const DrawersPage({super.key});

  @override
  State<DrawersPage> createState() => _DrawersPageState();
}

class _DrawersPageState extends State<DrawersPage> {
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
          'Drawers',
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
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Zoom',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Advanced',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Slider',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Backdrop',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                ZoomDemo(),
                AdvancedDemo(),
                SliderDemo(),
                BackdropDemo()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
