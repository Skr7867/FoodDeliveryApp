import 'package:flutter/material.dart';
import 'package:fooddelivery/Screens/OrderScreen/order_screen.dart';
import 'package:fooddelivery/Screens/list.dart';

import '../CustomeWidgets/colors.dart';
import '../CustomeWidgets/responsive_padding.dart';
import 'bottom_container.dart';

class VegSelector extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  const VegSelector({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<VegSelector> createState() => _VegSelectorState();
}

class _VegSelectorState extends State<VegSelector> {
  List<bool> isAdded =
      List<bool>.generate(container2Text.length, (index) => false);
  double totalPrice = 0.0;

  void toggleAddItem(int index, double price) {
    setState(() {
      if (isAdded[index]) {
        // Remove item
        isAdded[index] = false;
        totalPrice -= price;
      } else {
        // Add item
        isAdded[index] = true;
        totalPrice += price;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.greyColor),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: widget.screenHeight * 0.09,
            width: widget.screenWidth,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.greyColor),
              ),
            ),
            child: Padding(
              padding: ResponsivePadding.customPadding(
                context,
                left: 2,
                right: 16,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: ResponsivePadding.customPadding(context, top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/leaf.png',
                          height: widget.screenHeight * 0.022,
                        ),
                        const Text(
                          'Pure veg',
                          style: TextStyle(
                            color: AppColors.leafColor,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        Image.asset(
                          'assets/images/checkbox.png',
                          height: widget.screenHeight * 0.02,
                        ),
                        Container(
                          height: widget.screenHeight * 0.05,
                          width: widget.screenWidth * 0.25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: AppColors.greyColor,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/nonvegicon.png'),
                              const Text(
                                'Non Veg',
                                style: TextStyle(
                                  color: AppColors.nonvegColor,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: container2Text.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.6,
                crossAxisCount: 2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.greyColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(19),
                                topRight: Radius.circular(19),
                              ),
                              child: Image.asset(
                                container2Img[index],
                              ),
                            ),
                            Padding(
                              padding: ResponsivePadding.customPadding(context,
                                  left: 3, top: 1),
                              child: Text(
                                container2Text[index],
                                style: const TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: ResponsivePadding.customPadding(context,
                                  top: 4, left: 2, right: 2),
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    toggleAddItem(
                                        index, 299); // Adjust price as needed
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    elevation: 7,
                                    backgroundColor: isAdded[index]
                                        ? AppColors.addbtnColor
                                        : Colors.white,
                                    padding: ResponsivePadding.customPadding(
                                        context,
                                        left: 10,
                                        right: 10),
                                  ),
                                  child: Text(
                                    isAdded[index] ? 'Added' : 'Add',
                                    style: const TextStyle(
                                        fontFamily: 'Lexend',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          top: widget.screenHeight * 0.10,
                          left: widget.screenWidth * 0.012,
                          child: Image.asset(vegIcon[index]),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          BottomContainerWithButton(
            onButtonPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderScreen()),
              );
            },
            totalPrice: totalPrice,
          ),
        ],
      ),
    );
  }
}
