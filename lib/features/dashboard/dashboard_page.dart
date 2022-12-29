import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UI Samples',
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  'Loading indicators',
                ),
              ),
              ListTile(
                title: Text(
                  'Page transitions',
                ),
              ),
              ListTile(
                title: Text(
                  'View transitions',
                ),
              ),
              ListTile(
                title: Text(
                  'Animations',
                ),
              ),
              ListTile(
                title: Text(
                  'Rive animations',
                ),
              ),
              ListTile(
                title: Text(
                  'Side bars',
                ),
              ),
              ListTile(
                title: Text(
                  'Bottom navigation bars',
                ),
              ),
              ListTile(
                title: Text(
                  'Inputs',
                ),
              ),
              ListTile(
                title: Text(
                  'Buttons',
                ),
              ),
              ListTile(
                title: Text(
                  'Modals',
                ),
              ),
              ListTile(
                title: Text(
                  'Graphs',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
