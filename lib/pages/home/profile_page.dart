import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'ProfilePage',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
