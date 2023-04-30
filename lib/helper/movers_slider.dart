import 'package:aftgnpg/reusable_cards/movers_card.dart';
import 'package:flutter/material.dart';

class Movers extends StatelessWidget {
  Movers({super.key});

  // Data
  var givenValues = [
    ['Rishabh Pant', '3', 'IND', '43.04', '+72.64%'],
    ['Rohit Sharma', '0', 'MI', '71.24', '+21.65%'],
    ['Virat Kohli', '0', 'RCB', '42.36', '+48.25%'],
    ['MS Dhoni', '3', 'CSK', '76.19', '+1.25%'],
    ['Venkatesh Iyer', '2', 'KKR', '45.26', '+9.18%'],
    ['Suryakumer Yadav', '0', 'MI', '89.25', '+62.11%'],
  ];

  // Data
  var givenTypes = [
    'assets/images/bat.png',
    'assets/images/ball.png',
    'assets/images/bat_ball.png',
    'assets/images/wk_keeper.png',
  ];

  @override
  Widget build(BuildContext context) {

    // Horizontal Carousel for the Mid Slider.
    return ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(6.0),
            itemBuilder: (context, index) {

            // returns the Card with all the data in correct position
              return MoverCard(
                name: givenValues[index][0],
                image: iconToProcess(index),
                team: givenValues[index][2],
                points: givenValues[index][3],
                change: givenValues[index][4],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12,);
            },
            itemCount: 6,
    );
  }

  AssetImage iconToProcess(index) {
    return AssetImage(givenTypes[int.parse(givenValues[index][1])]);
  }
}