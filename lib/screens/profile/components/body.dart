import 'package:danek_books/constants.dart';
import 'package:flutter/material.dart';

import './profile_pic.dart';
import './profile_menu.dart';
import '../../../components/custom_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController fioController;
  FocusNode fioFocusNode;
  TextEditingController phoneController;
  FocusNode phoneFocusNode;

  @override
  void initState() {
    fioFocusNode = FocusNode();
    fioController = TextEditingController();
    fioController.text = "Камиль Жордонов";
    phoneFocusNode = FocusNode();
    phoneController = TextEditingController();
    phoneController.text = "+996 509055056";
    fioFocusNode.addListener(() {
      if (fioFocusNode.hasFocus) fioController.clear();
    });
    phoneFocusNode.addListener(() {
      if (phoneFocusNode.hasFocus) phoneController.clear();
    });
    super.initState();
  }

  @override
  void dispose() {
    fioFocusNode.dispose();
    fioController.dispose();
    phoneFocusNode.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Профиль',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40),
            ProfilePicture(),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Text(
                fioController.text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 30),
            ProfileMenu(
              text: 'Профиль',
              icon: Icons.person,
              onTap: () {
                showMyProfileMenu(context, fioController, phoneController);
              },
            ),
            SizedBox(height: 20),
            ProfileMenu(
              text: 'Менин китептерим',
              icon: Icons.fact_check,
            ),
            SizedBox(height: 20),
            ProfileMenu(
              text: 'Тиркеме тууралуу',
              icon: Icons.info,
              onTap: () {
                showAboutAppMenu(context);
              },
            ),
            SizedBox(height: 20),
            ProfileMenu(
              text: 'Жардам',
              icon: Icons.help,
            ),
            SizedBox(height: 20),
            ProfileMenu(
              text: 'Чыгуу',
              icon: Icons.exit_to_app,
            ),
          ],
        ),
      ),
    );
  }

  showMyProfileMenu(_context, controller1, controller2) {
    showModalBottomSheet(
        isScrollControlled: true,
        // isDismissible: false,
        context: _context,
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    height: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Профилим",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 59),
                  buildProfileEditMenu("Инициалы", "Камиль Джордонов",
                      controller1, fioFocusNode),
                  buildProfileEditMenu("Телефон номери", "+996 509055056",
                      controller2, phoneFocusNode),
                  CustomButton(
                    text: "Өзгөртүү",
                    press: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Container buildProfileEditMenu(String label, String hintText,
      TextEditingController controller, FocusNode focusNode) {
    return Container(
      height: 120,
      child: Column(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(196, 196, 196, 0.25),
              ),
              child: TextField(
                focusNode: focusNode,
                controller: controller,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.all(8),
                  fillColor: Colors.green,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  showAboutAppMenu(_context) {
    showModalBottomSheet(
        isScrollControlled: true,
        // isDismissible: false,
        context: _context,
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    height: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Тиркеме тууралуу",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 39),
                  Container(
                    height: 105,
                    width: 126,
                    child: Image.asset("assets/images/splash_03.png"),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Тиркеме тууралуу эмнелер\nжазылышы керек болсо алардые баары\nушул жака жазылышы керек",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Версия 2.1.2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Kamil Jordonov",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: "Ок",
                    press: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }
}
