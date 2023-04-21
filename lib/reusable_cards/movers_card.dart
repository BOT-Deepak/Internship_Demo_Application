import 'package:flutter/material.dart';
import 'package:aftgnpg/constants.dart';

class MoverCard extends StatelessWidget {

  // required parameters to be passed to be used in this card
  const MoverCard( { required this.name, required this.image, required this.team, required this.points, required this.change } );

  final String name, team, points, change;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        
        // Making the box designs
          margin: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
          ),
          
          // GestureDetector, so user can click here.
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  // Player Name
                  Expanded(child: Text(name, style: moverNameStyle,)),

                  // Player Icon with Team Name
                  Expanded(
                    child: Row(
                        children: [
                          Image(image: image, width: 30, height: 30,),
                          Text('  |  '+team, style: moverTeamStyle,),
                        ],
                      ),
                  ),

                  // The points and the change given
                  Expanded(
                    child: Row(
                      children: [
                        Text(points, style: moverPointsStyle,),
                        Text('  ('+change+')', style: moverChangeStyle,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}