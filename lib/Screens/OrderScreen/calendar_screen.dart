import 'package:flutter/material.dart';

class CalendarContainer extends StatefulWidget {
  const CalendarContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarContainerState createState() => _CalendarContainerState();
}

class _CalendarContainerState extends State<CalendarContainer> {
  DateTime? selectedDate;

  Future<void> _openDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => _openDatePicker(context),
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
                  'assets/icons/Calendar.png',
                  height: screenHeight * 0.03,
                ),
                if (selectedDate != null)
                  Text(
                    '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontFamily: 'Lexend'),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
