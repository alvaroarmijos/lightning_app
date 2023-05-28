import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lamp_app/src/widgets/widgets.dart';

class LampWidget extends StatelessWidget {
  const LampWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Stack(
        children: [
          AppBarLamp(),
          SwitchLamp(),
          BrightnessInfo(),
          Lamp(),
          Dimmer(),
        ],
      ),
    );
  }
}
