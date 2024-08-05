import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarLamp extends StatelessWidget {
  const AppBarLamp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SizedBox(
            height: 50,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "HELLO ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )));
  }
}
