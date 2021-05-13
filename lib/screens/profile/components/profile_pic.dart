import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../constants.dart';

class ProfilePicture extends StatefulWidget {
  @override
  _ProfilePictureState createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  File fileImage;

  Widget _buildAvatar() {
    if (fileImage == null) {
      return CircleAvatar(
        child: FittedBox(
          child: Text("No Image"),
        ),
      );
    }
    return CircleAvatar(
      backgroundImage: FileImage(fileImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 140),
      alignment: Alignment.center,
      child: SizedBox(
        height: 105,
        width: 105,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            _buildAvatar(),
            Positioned(
              bottom: -10,
              right: 37,
              child: SizedBox(
                height: 30,
                width: 30,
                child: _buildTextButton(),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextButton _buildTextButton() {
    return TextButton(
      style: ButtonStyle(
        alignment: Alignment.center,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            // side: BorderSide(color: kBackgroundColor),
          ),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.all(0)),
        backgroundColor: MaterialStateProperty.all(kSecondaryColor),
      ),
      child: Icon(
        Icons.photo_camera_rounded,
        color: Colors.white,
        size: 22,
      ),
      onPressed: () async {
        final picker = ImagePicker();
        final pickedFile = await picker.getImage(source: ImageSource.gallery);

        if (pickedFile == null) return;

        final file = File(pickedFile.path);
        setState(() {
          fileImage = file;
        });
      },
    );
  }
}
