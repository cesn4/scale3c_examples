/*
*
* Check live demo with various use-cases and its code on https://fluttercommunity.github.io/backdrop/demo/#/
*
* */

import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

/// Example app for demoing [BackdropScaffold]
class BackdropDemo extends StatelessWidget {
  /// Default constructor for [BackdropDemo].
  const BackdropDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: const Text("Backdrop Example"),
        actions: const <Widget>[
          BackdropToggleButton(
            icon: AnimatedIcons.list_view,
          )
        ],
      ),
      backLayer: const Center(
        child: Text("Back Layer"),
      ),
      subHeader: const BackdropSubHeader(
        title: Text("Sub Header"),
      ),
      frontLayer: const Center(
        child: Text("Front Layer"),
      ),
    );
  }
}
