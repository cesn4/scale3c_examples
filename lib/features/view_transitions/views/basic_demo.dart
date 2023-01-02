import 'package:flutter/material.dart';

class BasicDemo extends StatefulWidget {
  const BasicDemo({super.key});

  @override
  State<BasicDemo> createState() => _BasicDemoState();
}

class _BasicDemoState extends State<BasicDemo> {
  final PageController controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> views = [
      Container(
        key: const Key('View 1'),
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Center(
          child: Text(
            'View 1',
          ),
        ),
      ),
      Container(
        key: const Key('View 2'),
        color: Colors.grey,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'View 2',
            ),
            Text(
              'View 2',
            ),
          ],
        ),
      ),
      Container(
        key: const Key('View 3'),
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'View 3',
            ),
            Text(
              'View 3',
            ),
            Text(
              'View 3',
            ),
          ],
        ),
      )
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            controller.animateToPage(
              value,
              curve: Curves.easeInOut,
              duration: const Duration(
                milliseconds: 300,
              ),
            );
            setState(() {
              index = value;
            });
          }),
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.view_cozy_rounded),
              label: 'View 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_cozy_rounded),
              label: 'View 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_cozy_rounded),
              label: 'View 3',
            ),
          ],
        ),
        body: PageView(
          controller: controller,
          children: views,
        ));
  }
}
