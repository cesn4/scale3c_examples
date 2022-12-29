import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:scale3c_examples/features/color_picker/color_picker_page.dart';
import 'package:scale3c_examples/features/loading_indicators/loading_indicators_page.dart';

class DashboardSidebar extends StatelessWidget {
  const DashboardSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Get.to(
                  const ColorPickerPage(),
                );
              },
              title: const Text(
                'Color Picker',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const LoadingIndicatorPage(),
                );
              },
              title: const Text(
                'Loading indicators',
              ),
            ),
            const ListTile(
              title: Text(
                'Page transitions',
              ),
            ),
            const ListTile(
              title: Text(
                'View transitions',
              ),
            ),
            const ListTile(
              title: Text(
                'Animations',
              ),
            ),
            const ListTile(
              title: Text(
                'Rive animations',
              ),
            ),
            const ListTile(
              title: Text(
                'Side bars',
              ),
            ),
            const ListTile(
              title: Text(
                'Bottom navigation bars',
              ),
            ),
            const ListTile(
              title: Text(
                'Inputs',
              ),
            ),
            const ListTile(
              title: Text(
                'Buttons',
              ),
            ),
            const ListTile(
              title: Text(
                'Modals',
              ),
            ),
            const ListTile(
              title: Text(
                'Graphs',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
