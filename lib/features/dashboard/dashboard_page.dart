import 'package:flutter/material.dart';
import 'package:scale3c_examples/features/dashboard/widgets/dashboard_sidebar.dart';
import 'package:scale3c_examples/widgets/base_mixin.dart';

class DashboardPage extends StatelessWidget with BaseMixin {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).background,
      appBar: AppBar(),
      drawer: const DashboardSidebar(),
    );
  }
}
