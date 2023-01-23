import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:scale3c_examples/features/bottom_navigation/bottom_navigation_page.dart';
import 'package:scale3c_examples/features/chat/chat_page.dart';
import 'package:scale3c_examples/features/color_picker/color_picker_page.dart';
import 'package:scale3c_examples/features/drawers/drawers_page.dart';
import 'package:scale3c_examples/features/loading_indicators/loading_indicators_page.dart';
import 'package:scale3c_examples/features/page_transitions/page_transitions_page.dart';
import 'package:scale3c_examples/features/rive_animations/rive_animations_page.dart';
import 'package:scale3c_examples/features/view_transitions/view_transitions_page.dart';

class DashboardSidebar extends StatelessWidget {
  const DashboardSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
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
            ListTile(
              onTap: () {
                Get.to(
                  const PageTransitionPage(),
                );
              },
              title: const Text(
                'Page transitions',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const ViewTransitionPage(),
                );
              },
              title: const Text(
                'View transitions',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const RiveAnimationsPage(),
                );
              },
              title: const Text(
                'Rive animations',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const DrawersPage(),
                );
              },
              title: const Text(
                'Drawers',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const BottomNavigationPage(),
                );
              },
              title: const Text(
                'Bottom navigation bars',
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(
                  const ChatPage(),
                );
              },
              title: const Text(
                'Chat',
              ),
            ),
            // const ListTile(
            //   title: Text(
            //     'Buttons',
            //   ),
            // ),
            // const ListTile(
            //   title: Text(
            //     'Modals',
            //   ),
            // ),
            // const ListTile(
            //   title: Text(
            //     'Graphs',
            //   ),
            // ),
            // const ListTile(
            //   title: Text(
            //     'Refresh indicators',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
