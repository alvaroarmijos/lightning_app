import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/lightbulb_provider.dart';

class Dimmer extends StatelessWidget {
  const Dimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightbulbProvider>(context);

    return Positioned(
      bottom: 48,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Icon(
                  CupertinoIcons.lightbulb,
                  color: Colors.grey,
                ),
                Expanded(
                  child: CupertinoSlider(
                    divisions: provider.maxValue,
                    max: provider.maxValue.toDouble(),
                    activeColor: Colors.white,
                    value: provider.brightness.toDouble(),
                    onChanged: (value) => provider.brightness = value.toInt(),
                  ),
                ),
                const Icon(
                  CupertinoIcons.lightbulb_fill,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 44,
                ),
                Expanded(
                  child: Row(
                    children: [
                      for (var i = 0; i < 5; i++) const RowIndicator(),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 44,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RowIndicator extends StatelessWidget {
  const RowIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(right: 20),
              height: 6,
              width: 1,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
