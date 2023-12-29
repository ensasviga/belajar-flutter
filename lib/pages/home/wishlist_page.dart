import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'WishlistPage',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
