import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:scale3c_examples/features/dashboard/dashboard_page.dart';
import 'package:scale3c_examples/state/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeState(),
      child: Consumer<ThemeState>(builder: (context, state, _) {
        return GetMaterialApp(
          theme: state.theme,
          darkTheme: state.darkTheme,
          themeMode: ThemeMode.dark,
          home: const DashboardPage(),
        );
      }),
    );
  }
}
