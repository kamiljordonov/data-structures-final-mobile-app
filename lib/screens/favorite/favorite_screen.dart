import 'package:danek_books/components/custom_bottom_nav_bar.dart';
import 'package:danek_books/enums.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = '/favorite';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Бул жакта сиз сактап койгон китептер сакталат',
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
