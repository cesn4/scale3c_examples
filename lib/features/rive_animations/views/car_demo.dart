import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CarDemo extends StatefulWidget {
  const CarDemo({Key? key}) : super(key: key);

  @override
  State<CarDemo> createState() => _CarDemoState();
}

class _CarDemoState extends State<CarDemo> {
  SMITrigger? _bump;

  void _onRiveInit(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(artboard, 'bumpy');
    artboard.addController(controller!);
    _bump = controller.findInput<bool>('bump') as SMITrigger;
  }

  void _hitBump() => _bump?.fire();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEB3A60),
      body: SafeArea(
        bottom: Platform.isAndroid,
        child: GestureDetector(
          onTap: _hitBump,
          child: Stack(
            fit: StackFit.expand,
            children: [
              RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',
                fit: BoxFit.fitHeight,
                onInit: _onRiveInit,
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'PRESS ON THE CAR',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
