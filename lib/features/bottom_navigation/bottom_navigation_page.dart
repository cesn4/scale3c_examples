import 'package:flutter/material.dart';
import 'package:scale3c_examples/features/bottom_navigation/views/curved_demo.dart';

import 'views/animated_demo.dart';
import 'views/google_demo.dart';
import 'views/snake_demo.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
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
          'Animations',
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
            label: 'Animated',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Curved',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Google',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Snake',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: const [
                AnimatedDemo(
                  title: 'Animated',
                ),
                CurvedDemo(),
                GoogleDemo(),
                SnakeDemo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
