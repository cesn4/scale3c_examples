import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GetDemo extends StatelessWidget {
  const GetDemo({super.key});

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
                        Get.to(const SamplePage(),
                            transition: Transition.values[index],
                            fullscreenDialog: true,
                            duration: const Duration(milliseconds: 300));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          Transition.values[index].name.toUpperCase(),
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
              childCount: Transition.values.length,
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
