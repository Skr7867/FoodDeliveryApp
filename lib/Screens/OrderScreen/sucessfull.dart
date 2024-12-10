import 'package:flutter/material.dart';
import 'package:fooddelivery/CustomeWidgets/colors.dart';
import 'package:fooddelivery/CustomeWidgets/responsive_padding.dart';

class Sucessfull extends StatefulWidget {
  const Sucessfull({super.key});

  @override
  State<Sucessfull> createState() => _SucessfullState();
}

class _SucessfullState extends State<Sucessfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              padding: ResponsivePadding.customPadding(context,
                  top: 25, right: 10, left: 10),
              child: Image.asset('assets/images/sucessfully.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Order Placed Sucessfully',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Lexend',
              color: AppColors.nonvegColor,
            ),
          ),
        ],
      ),
    );
  }
}
