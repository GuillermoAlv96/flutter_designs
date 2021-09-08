import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          SingleCard(
              color: Colors.blue,
              icon: Icons.add_to_home_screen,
              string: 'General'),
          SingleCard(
              color: Colors.grey,
              icon: Icons.transfer_within_a_station,
              string: 'Transport')
        ]),
        TableRow(children: [
          SingleCard(
              color: Colors.orange, icon: Icons.shop, string: 'Shopping'),
          SingleCard(
              color: Colors.red,
              icon: Icons.local_grocery_store,
              string: 'Grocery')
        ]),
        TableRow(children: [
          SingleCard(
              color: Colors.green, icon: Icons.money_off, string: 'Bill'),
          SingleCard(
              color: Colors.yellow,
              icon: Icons.fitness_center,
              string: 'Entertainment')
        ]),
      ],
    );
  }
}

class SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String string;

  const SingleCard(
      {Key? key, required this.icon, required this.color, required this.string})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          margin: EdgeInsets.all(15),
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(62, 66, 107, 0.7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: this.color,
                radius: 30,
                child: Icon(
                  this.icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 18),
              Text(
                this.string,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
