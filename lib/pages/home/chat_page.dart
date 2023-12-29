import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'ChatPage',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
