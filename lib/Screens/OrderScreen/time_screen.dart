import 'package:flutter/material.dart';

class TimeSelectionContainer extends StatefulWidget {
  const TimeSelectionContainer({super.key});

  @override
  _TimeSelectionContainerState createState() => _TimeSelectionContainerState();
}

class _TimeSelectionContainerState extends State<TimeSelectionContainer> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  Future<void> _selectTimeRange(BuildContext context) async {
    final TimeOfDay? pickedStartTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );

    if (pickedStartTime != null) {
      final TimeOfDay? pickedEndTime = await showTimePicker(
        context: context,
        initialTime: pickedStartTime.replacing(hour: pickedStartTime.hour + 2),
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        },
      );

      if (pickedEndTime != null) {
        setState(() {
          startTime = pickedStartTime;
          endTime = pickedEndTime;
        });
      }
    }
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return '--:--';
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '${time.hourOfPeriod}:${time.minute.toString().padLeft(2, '0')} $period';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        GestureDetector(
          onTap: () => _selectTimeRange(context),
          child: Container(
            height: screenHeight * 0.05,
            width: screenWidth * 0.4,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey.shade300,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/icons/clock.png',
                  height: screenHeight * 0.025,
                ),
                Text(
                  startTime != null && endTime != null
                      ? '${_formatTime(startTime)} - ${_formatTime(endTime)}'
                      : 'Select Time',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
