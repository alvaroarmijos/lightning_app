import 'package:flutter/material.dart';

class FooterSchedule extends StatelessWidget {
  const FooterSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExpenseInformation(
              label: "Daily Usage", quantity: "1.5", unit: "KWh"),
          ExpenseInformation(
              label: "Montly Usage", quantity: "18", unit: "KWh"),
          ExpenseInformation(
              label: "Total Usage Hours", quantity: "1.5", unit: "Hrs"),
        ],
      ),
    );
  }
}

class ExpenseInformation extends StatelessWidget {
  const ExpenseInformation({
    super.key,
    required this.label,
    required this.quantity,
    required this.unit,
  });

  final String label;
  final String quantity;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.grey),
          ),
          RichText(
            text: TextSpan(
              text: quantity,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey),
              children: [
                TextSpan(
                  text: " $unit",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
