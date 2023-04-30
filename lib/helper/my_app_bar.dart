import 'package:aftgnpg/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      child: Stack(
        children: <Widget>[
          // Top Left Image and Profile Name
          Row(
            children: [
              Row(
                children: const [
                  // Left Circle Image Avatar
                  CircleAvatar(
                  radius: 20,
                    backgroundImage: AssetImage('assets/images/profileImage.jpg'),
                  ),
                  // Some Space in between Image and Name
                  SizedBox(width: 10.0,),
                  // Name of the User
                  Text('Deepak', style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600, color: darkThemeColor),),
                ],
              ),
            ],
         ),
          // Align ( cause this is a stack, so we can place it on above of other widgets using align widget )
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 50.0, 0.0),
              child: GestureDetector(
                onTap: () {},
                // Search Icon, ( inside GestureDetector, cause we can tap it )
                child: const Icon(FontAwesomeIcons.search, size: 30.0, color: lightThemeColor,),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: GestureDetector(
                onTap: () {},
                // Profile Icon
                child: const Icon(FontAwesomeIcons.userCircle, size: 30.0, color: lightThemeColor,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}