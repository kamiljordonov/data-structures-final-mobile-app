import 'package:danek_books/enums.dart';
import 'package:flutter/material.dart';

import '../../components/custom_bottom_nav_bar.dart';

class TalkAboutScreen extends StatelessWidget {
  static String routeName = '/talk_about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
            TalkAboutCard(
              title: 'Ак кеме',
              descrip: 'Бул ак кеме китеби',
              image: 'assets/images/books/ak_keme.jpg',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.message,
      ),
    );
  }
}

class TalkAboutCard extends StatelessWidget {
  final String image;
  final String title;
  final String descrip;
  TalkAboutCard({
    this.image,
    this.title,
    this.descrip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: ClipOval(
          child: Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title),
        tileColor: Color.fromRGBO(0, 0, 255, 0.2),
        subtitle: Text(descrip),
      ),
    );
  }
}
