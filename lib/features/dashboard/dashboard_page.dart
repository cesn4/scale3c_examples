import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:scale3c_examples/widgets/base_mixin.dart';

import 'widgets/dashboard_sidebar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with BaseMixin {
  SMITrigger? _bump;

  void _onRiveInit(Artboard artboard) {
    final controller =
        StateMachineController.fromArtboard(artboard, "Don't Skip Leg Day");
    artboard.addController(controller!);
    print(controller);
    _bump = controller.findInput<bool>('Squat') as SMITrigger;
  }

  void _hitBump() => _bump?.fire();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFB9F08E),
      child: Stack(
        children: [
          RiveAnimation.asset(
            'assets/lumberjack_squats.riv',
            fit: BoxFit.fitWidth,
            onInit: _onRiveInit,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            drawer: const DashboardSidebar(),
            appBar: AppBar(
              foregroundColor: colorScheme(context).surface,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Scale3c',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            floatingActionButton: Material(
              color: colorScheme(context).surface,
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                onTap: () => _hitBump(),
                child: Ink(
                  height: 60,
                  width: 60,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
