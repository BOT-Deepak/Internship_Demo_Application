import 'package:flutter/material.dart';
import 'package:aftgnpg/constants.dart';

class ListDataCard extends StatelessWidget {

  // List of parameters in this class function
  const ListDataCard( {super.key,  required this.name, required this.image, required this.team, required this.points, required this.change } );

  final String name, team, points, change;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [

                // Left side of List Icon and Player Name
                Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                              child: Text(name, style: moverNameStyle,),
                        ),
                        Row(
                          children: [
                            Image(image: image, width: 30, height: 30,),
                            const SizedBox(width: 12.0,),
                            Text(team, style: moverTeamStyle,),
                          ],
                        ),
                      ],
                  ),
                ),

                // Right side of List Points and change.
                Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(points, style: moverPointsStyle,),
                        Text(change, style: wrongChangeStyle,),
                      ],
                    ),
                  ),
              ],
            ),
        ),
      ),
    );
  }
}