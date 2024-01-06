// ignore_for_file: dead_code, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home/chat_page.dart';
import 'package:flutter_application_1/pages/home/home_page.dart';
import 'package:flutter_application_1/pages/home/profile_page.dart';
import 'package:flutter_application_1/pages/home/wishlist_page.dart';
import 'package:flutter_application_1/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/Cart_Icon.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/Home.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : extendColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/Chat_Icon.png',
                  width: 20,
                  color: currentIndex == 1 ? primaryColor : extendColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/love.png',
                  width: 20,
                  color: currentIndex == 2 ? primaryColor : extendColor,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/Profile.png',
                  width: 18,
                  color: currentIndex == 3 ? primaryColor : extendColor,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      // bottomNavigationBar: navbar(),
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
