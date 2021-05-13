import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  const ProfileMenu({this.icon, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        child: Row(
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
              size: 40,
            ),
            SizedBox(width: 40),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}
