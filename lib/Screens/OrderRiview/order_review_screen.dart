import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/colors.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_padding.dart';

class OrderReviewScreen extends StatefulWidget {
  const OrderReviewScreen({super.key});

  @override
  State<OrderReviewScreen> createState() => _OrderReviewScreenState();
}

class _OrderReviewScreenState extends State<OrderReviewScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Order Review',
          style: TextStyle(
              fontFamily: 'Lexend', fontSize: 15, color: AppColors.blackColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Center(
              child: Container(
                height: screenHeight * 0.3,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: ResponsivePadding.customPadding(context, top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/icons/square.png',
                            height: screenHeight * 0.025,
                          ),
                          const Text(
                            'Millet Breakfast',
                            style: TextStyle(fontFamily: 'Lexend'),
                          ),
                          SizedBox(
                            width: screenWidth * 0.25,
                          ),
                          const Text(
                            'Edit',
                            style: TextStyle(
                                color: AppColors.addbtnColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lexend'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/icons/men.png',
                          height: screenHeight * 0.035,
                          color: AppColors.greyColor,
                        ),
                        const Text(
                          '265',
                          style: TextStyle(
                              fontFamily: 'Lexend', color: AppColors.greyColor),
                        ),
                        const Icon(
                          Icons.calendar_month,
                          color: AppColors.greyColor,
                        ),
                        const Text(
                          '11/09/2024',
                          style: TextStyle(
                              fontFamily: 'Lexend', color: AppColors.greyColor),
                        ),
                        const Icon(
                          Icons.punch_clock_rounded,
                          color: AppColors.greyColor,
                        ),
                        const Text(
                          '12:30AM - 02:30',
                          style: TextStyle(
                              fontFamily: 'Lexend', color: AppColors.greyColor),
                        )
                      ],
                    ),
                    Divider(color: Colors.grey.shade200),
                    Padding(
                      padding: ResponsivePadding.customPadding(context,
                          right: 2, left: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hide selected item',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Lexend',
                                color: Colors.grey),
                          ),
                          Image.asset(
                            'assets/icons/up.png',
                            height: screenHeight * 0.01,
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey.shade200),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Padding(
                      padding:
                          ResponsivePadding.customPadding(context, left: 2),
                      child: Row(
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: ' Subtotal  ',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(
                                  text: '₹24,600',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                    fontFamily: 'Lexend',
                                  ),
                                ),
                                TextSpan(
                                  text: '  ₹22,000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Lexend',
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: ResponsivePadding.customPadding(context,
                                left: 30),
                            child: Image.asset(
                              'assets/icons/right.png',
                              height: screenHeight * 0.02,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: ResponsivePadding.customPadding(context,
                          left: 3.4, top: 0.2),
                      child: const Text(
                        'Incl,taxes and charges',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Lexend',
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Container(
              height: screenHeight * 0.30,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: screenHeight * 0.035,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: AppColors.fontColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: ' 🥳Hurray! You saved  ',
                            style: TextStyle(
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: '₹17,300/-',
                                style: TextStyle(
                                  color: AppColors.goldbtnColor,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 12,
                                  fontFamily: 'Lexend',
                                ),
                              ),
                              TextSpan(
                                text: '  on total order',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Lexend',
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 5, right: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Total'), Text('₹24,600')],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 5, right: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dynamic pricing Discount'),
                        Text('-₹8,000')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  DottedLine(
                    dashColor: Colors.grey.shade200,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 5, right: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'To Pay',
                          style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        Text(
                          '₹41,800',
                          style: TextStyle(
                              fontFamily: 'Lexend',
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Container(
              height: screenHeight * 0.11,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(width: 1, color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        top: 3, left: 3),
                    child: const Column(
                      children: [
                        Text(
                          'To Pay',
                          style: TextStyle(
                              color: AppColors.greyColor, fontFamily: 'Lexend'),
                        ),
                        Text(
                          '₹90,500',
                          style: TextStyle(fontFamily: 'Lexend'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context, right: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Sucessful');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(15), // Rounded corners
                        ),
                        elevation: 7,
                        backgroundColor:
                            Colors.purple, // Replace with AppColors.addbtnColor
                        padding: ResponsivePadding.symmetricPadding(context,
                            horizontal: 15, vertical: 2),
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text(
                        'Place Order',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w400,
                          fontSize: 18, // Adjust font size for responsiveness
                          color:
                              Colors.white, // Replace with AppColors.whiteColor
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
