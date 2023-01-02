import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AnimationsDemo extends StatefulWidget {
  const AnimationsDemo({super.key});

  @override
  State<AnimationsDemo> createState() => _AnimationsDemoState();
}

class _AnimationsDemoState extends State<AnimationsDemo> {
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
        color: Colors.amber,
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
        color: Colors.amber,
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
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            fillColor: Colors.amber,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: views[index],
      ),
    );
  }
}
