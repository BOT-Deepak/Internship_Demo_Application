import 'package:aftgnpg/components/case_screen.dart';
import 'package:aftgnpg/components/profile_screen.dart';
import 'package:aftgnpg/components/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'components/home_screen.dart';
import 'constants.dart';

class MainController extends StatefulWidget {
  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> {

  // _selectedIndex tells about the index of the page, selected to view using pageController.
  int _selectedIndex = 0;
  PageController _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      // PageView Class to use controller, and put value of index called from swiping or selecting tabs
      // Those values get stored in the _selectedIndex to be used later
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {

          // Putting the value of index in _selectedIndex
          setState(() {
            _selectedIndex = index;
          });
        },

        // All four pages, to be visited according to the index from 0 to 3.
        children: [
          MyHomeScreen(),
          MyCaseScreen(),
          MyWalletScreen(),
          MyProfileScreen(),
        ],
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(

        // decoration for bottom bar
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.purple.withOpacity(.1),
            )
          ],
        ),

        // Making the bottom navigation bar
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 8,
              activeColor: lightThemeColor,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),

              // time to switch
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: lightThemeColor.withOpacity(.2),
              color: darkThemeColor,
              tabs: [

                // Font-Awesome Icons and Text on every option on Nav-bar
                GButton(
                  icon: FontAwesomeIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.briefcase,
                  text: 'Case',
                ),
                GButton(
                  icon: FontAwesomeIcons.wallet,
                  text: 'Wallet',
                ),
                GButton(
                  icon: FontAwesomeIcons.bars,
                  text: 'Profile',
                ),
              ],

              selectedIndex: _selectedIndex,

              // If any tab changes, calls this function to animate the chnage of page.
              onTabChange: (index) {
  _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
              },
            ),
          ),
        ),
      ),
    );
  }
}