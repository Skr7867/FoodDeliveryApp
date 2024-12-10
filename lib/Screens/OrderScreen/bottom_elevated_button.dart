import 'package:flutter/material.dart';

class BottomButtonScreen extends StatelessWidget {
  const BottomButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(), // Empty body
      bottomNavigationBar: BottomAppBar(
        elevation: 0, // No elevation for the BottomAppBar
        color: Colors.transparent, // Make it transparent
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/OrderReviewScreen');
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              elevation: 7,
              backgroundColor:
                  Colors.purple, // Replace with AppColors.addbtnColor
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text(
              'Order Review',
              style: TextStyle(
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w400,
                fontSize: 14, // Adjust font size for responsiveness
                color: Colors.white, // Replace with AppColors.whiteColor
              ),
            ),
          ),
        ),
      ),
    );
  }
}
