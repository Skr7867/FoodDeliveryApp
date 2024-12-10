import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/Screens/add_to_cart_screen.dart';

import '../CustomeWidgets/colors.dart';
import '../CustomeWidgets/responsive_fonts.dart';
import '../CustomeWidgets/responsive_padding.dart';

class CustomCardWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<String> images;
  final List<String> text;

  const CustomCardWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.images,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: screenHeight * 0.6,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.greyColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(13)),
                child: Image.asset('assets/images/paneer.png')),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Indian Soiree',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: ResponsiveFontSize.getResponsiveFontSizeByHeight(
                      context, 25),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lexend',
                ),
              ),
            ),
            const Divider(
              height: 0,
              endIndent: 15,
              indent: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 14),
              height: screenHeight * 0.04,
              width: screenWidth * 0.5,
              decoration: const BoxDecoration(
                color: AppColors.textContainer,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  '7 Categories & 12 Items',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    width: screenWidth * 0.15,
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                        ),
                        Text(
                          text[index],
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                            fontSize: ResponsiveFontSize.getResponsiveFontSize(
                                context, 60),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const DottedLine(
                lineLength: double.infinity,
                lineThickness: 1.0,
                dashLength: 5.0,
                dashColor: AppColors.greyColor,
                dashGapLength: 4.0,
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: ResponsivePadding.customPadding(context,
                          top: 3, left: 3),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '₹299',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: AppColors.blackColor,
                              ),
                            ),
                            TextSpan(
                              text: '/guest',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: ResponsivePadding.customPadding(context,
                          bottom: 5, left: 3),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Add guest count to see',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                color: AppColors.greyColor,
                              ),
                            ),
                            TextSpan(
                              text: '✨Dynamic Price',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.normal,
                                fontSize: 9,
                                color: AppColors.fontColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.06,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddToCartScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 7,
                      backgroundColor: AppColors.fontColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                  child: Text(
                    'Customize  >',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        fontSize: ResponsiveFontSize.getResponsiveFontSize(
                          context,
                          65,
                        ),
                        color: AppColors.whiteColor),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
