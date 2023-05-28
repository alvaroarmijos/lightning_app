import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarLamp extends StatelessWidget {
  const AppBarLamp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SizedBox(
            height: 52,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Light",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )));
  }
}
