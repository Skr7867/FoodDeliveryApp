import 'package:flutter/material.dart';

import '../CustomeWidgets/colors.dart';

class BottomContainerWithButton extends StatelessWidget {
  final VoidCallback onButtonPressed;
  final double totalPrice;

  const BottomContainerWithButton({
    super.key,
    required this.onButtonPressed,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price per plate',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.greyColor,
                    fontFamily: 'Lexend'),
              ),
              const SizedBox(height: 4),
              Text(
                'Total: ₹${totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.blackColor,
                  fontFamily: 'Lexend',
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: onButtonPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              backgroundColor: AppColors.fontColor,
              padding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            child: const Text(
              'Fill Details',
              style: TextStyle(
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
