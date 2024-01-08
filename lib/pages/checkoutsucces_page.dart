import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class CheckOutSucces extends StatelessWidget {
  const CheckOutSucces({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          "Checkout Success",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Column(
        children: [
          Image.asset(
            'assets/Cart Icon',
            width: 80,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
