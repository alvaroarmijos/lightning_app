import 'package:flutter/material.dart';
import 'package:lamp_app/src/provider/lightbulb_provider.dart';
import 'package:provider/provider.dart';

class BrightnessInfo extends StatelessWidget {
  const BrightnessInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightbulbProvider>(context);

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          top: 256,
        ),
        child: Column(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: Text(
                "${provider.brightnessPercent}%",
                key: ValueKey<int>(provider.brightnessPercent),
                style: const TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
            const Text(
              "Brightness",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
