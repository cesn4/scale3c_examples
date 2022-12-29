import 'package:flutter/material.dart';

mixin BaseMixin {
  MediaQueryData mediaQuery(BuildContext context) {
    return MediaQuery.of(context);
  }

  ColorScheme colorScheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  TextTheme textTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  double maxHeight(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final topSafeArea = mediaQuery.padding.top;
    final bottomSafeArea = mediaQuery.padding.bottom;
    return mediaQuery.size.height - topSafeArea - bottomSafeArea;
  }

  double maxWidth(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final rightSafeArea = mediaQuery.padding.right;
    final leftSafeArea = mediaQuery.padding.left;
    return mediaQuery.size.width - rightSafeArea - leftSafeArea;
  }
}
