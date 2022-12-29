import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class PageTransitionDemo extends StatelessWidget {
  const PageTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1,
            ),
            delegate: SliverChildBuilderDelegate(
              (ctx, index) => Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.values[index],
                            duration: PageTransitionType.values[index] ==
                                    PageTransitionType.rotate
                                ? const Duration(milliseconds: 1000)
                                : const Duration(milliseconds: 300),
                            child: const SamplePage(),
                            alignment: Alignment.center,
                            childCurrent: this,
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          PageTransitionType.values[index].name.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              childCount: PageTransitionType.values.length,
            ),
          ),
        ],
      ),
    );
  }
}

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sample Page'),
      ),
    );
  }
}
