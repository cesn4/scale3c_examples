import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeState extends ChangeNotifier {
  ThemeState() {
    theme = buildTheme(Brightness.light);
    darkTheme = buildTheme(Brightness.dark);
  }

  late ThemeData theme;

  late ThemeData darkTheme;

  ThemeMode themeMode = ThemeMode.dark;

  ThemeData buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);
    return baseTheme.copyWith(
      textTheme: GoogleFonts.robotoTextTheme(baseTheme.textTheme),
    );
  }

  void changePrimaryColor(Color color) {
    theme = theme.copyWith(primaryColor: color);
    notifyListeners();
  }

  void changeBackgroundColor(Color color) {
    theme = theme.copyWith(backgroundColor: color);
    notifyListeners();
  }

  void changeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
}
