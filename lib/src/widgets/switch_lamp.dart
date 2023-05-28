import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp_app/src/provider/lightbulb_provider.dart';
import 'package:provider/provider.dart';

class SwitchLamp extends StatelessWidget {
  const SwitchLamp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LightbulbProvider>(context);

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 32, top: 132),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Power',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            CupertinoSwitch(
              activeColor: Colors.white,
              trackColor: Colors.white,
              thumbColor: Theme.of(context).colorScheme.secondary,
              value: provider.power,
              onChanged: provider.onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
