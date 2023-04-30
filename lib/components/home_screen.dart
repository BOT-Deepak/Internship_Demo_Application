import 'package:aftgnpg/constants.dart';
import 'package:aftgnpg/helper/listData_card.dart';
import 'package:aftgnpg/helper/mid_slider.dart';
import 'package:flutter/material.dart';
import '../helper/movers_slider.dart';
import '../helper/my_app_bar.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

// Data for Trending Tab List
  var givenValues = [
    ['Rishabh Pant', '3', 'IND', '43.04', '-72.64%'],
    ['Rohit Sharma', '0', 'MI', '71.24', '-21.65%'],
    ['Virat Kohli', '0', 'RCB', '42.36', '-48.25%'],
    ['MS Dhoni', '3', 'CSK', '76.19', '-1.25%'],
    ['Venkatesh Iyer', '2', 'KKR', '45.26', '-9.18%'],
    ['Suryakumer Yadav', '0', 'MI', '89.25', '-62.11%'],
  ];

// Icons for Data List
  var givenTypes = [
    'assets/images/bat.png',
    'assets/images/ball.png',
    'assets/images/bat_ball.png',
    'assets/images/wk_keeper.png',
  ];

  @override
  Widget build(BuildContext context) {

    // Content on Screen
    return Scaffold(

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  // Top App Bar
                  const MyAppBar(),

                  // The First Big Carousel
                  Expanded(
                    flex: 6,
                      child: Carousel()
                  ),

                  // The Top Moves Text in between
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'Top Movers',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  // The small carousel of players in top movers
                  Expanded(
                    flex: 3,
                      child: Movers(),
                  ),

                  // The All Lists Text in between
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Text(
                        'All Lists',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  // Change list with the help of buttons
                  Expanded(
                    flex: 6,
                        child: DefaultTabController(

                            // length of button tab : 2 ( Trending & New Players )
                              length: 2,
                              child: Column(
                                children: [
                                  Material(

                                    child: Container(
                                        color: Colors.white,

                                        // TabBar with some setting for buttons and layout
                                        child: TabBar(
                                          physics: const ClampingScrollPhysics(),
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                          unselectedLabelColor: Colors.black,
                                          indicatorSize: TabBarIndicatorSize.label,
                                          labelColor: lightThemeColor,
                                          indicator: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: lightThemeColor.withOpacity(0.2),
                                          ),
                                          tabs: [


                                            // The box of Trending Button
                                            Tab(
                                              child: Container(
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.grey.withOpacity(0.3),
                                                ),
                                                child: const Align(
                                                  alignment: Alignment.center,
                                                  child: Text("Trending"),
                                                ),
                                              ),
                                            ),

                                            // The box of New Players Button
                                            Tab(
                                              child: Container(
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30),
                                                  color: Colors.grey.withOpacity(0.3),
                                                ),
                                                child: const Align(
                                                  alignment: Alignment.center,
                                                  child: Text("New Players"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                    ),
                                  ),

                                  // This is the portion of listing down the players down there
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        ListView.separated(
                                            itemBuilder: (context, index) {
                                              return ListDataCard(
                                                name: givenValues[index][0],
                                                image: iconToProcess(index),
                                                team: givenValues[index][2],
                                                points: givenValues[index][3],
                                                change: givenValues[index][4],
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return const Divider(
                                                  thickness: 0.2,
                                                  indent: 20,
                                                  endIndent: 20,
                                                  color: Colors.black,
                                                );
                                            },
                                            itemCount: 6
                                        ),
                                        ListView.separated(
                                            itemBuilder: (context, index) {
                                              return ListDataCard(
                                                name: 'Name',
                                                image: iconToProcess(4),
                                                team: 'Team',
                                                points: 'Points',
                                                change: 'Change',
                                              );
                                            },
                                            separatorBuilder: (context, index) {
                                              return const Divider(
                                                  thickness: 0.2,
                                                  indent: 20,
                                                  endIndent: 20,
                                                  color: Colors.black,
                                              );
                                            },
                                            itemCount: 6
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                        ),
                    ),
                          ],
                          ),
        ),
        ),
    );
  }

  // Returns the image according to the index of tbe players information in the list
  AssetImage iconToProcess(index) {
    return AssetImage(givenTypes[int.parse(givenValues[index][1])]);
  }
}
