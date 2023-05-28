import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderSchedule extends StatelessWidget {
  const HeaderSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Schedule",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TimeWidget(
                  label: "From",
                  time: "8:00",
                  abbreviation: "PM",
                ),
                TimeWidget(
                  label: "To",
                  time: "12:00",
                  abbreviation: "PM",
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.delete_outlined,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.note_alt_outlined,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
    required this.label,
    required this.time,
    required this.abbreviation,
  });

  final String label;
  final String time;
  final String abbreviation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () => _showDialog(
            context,
            CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.time,
              use24hFormat: true,
              // This is called when the user changes the time.
              onDateTimeChanged: (DateTime newTime) {},
            ),
          ),
          child: Text(
            time,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          abbreviation,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }

  void _showDialog(BuildContext context, Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }
}
