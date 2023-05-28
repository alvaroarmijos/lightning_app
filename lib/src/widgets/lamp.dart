import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/lightbulb_provider.dart';

class Lamp extends StatelessWidget {
  const Lamp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightbulbProvider>(context);

    return Positioned(
      top: 0,
      right: -60,
      child: SizedBox(
        height: 410,
        child: Stack(
          children: [
            Positioned(
              bottom: 15,
              right: 77,
              child: Container(
                height: 20,
                width: 190,
                decoration: BoxDecoration(
                    color: Colors.yellow[provider.opacity],
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(190, 20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellow[provider.opacity]!,
                        blurRadius: provider.blurRadius,
                        spreadRadius: provider.spreadRadius,
                      )
                    ]),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 147,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.yellow[provider.opacity],
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Image.asset(
              'assets/images/lamp.png',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
