import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconContainer extends StatelessWidget {
  IconContainer({
    required this.icon, 
    required this.counter, 
    this.iconColor = Colors.black, super.key});

  // Added variables to use it in the widget.
  // and these variables are required in the constructor
  final IconData icon;
  final String counter;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: iconColor,
          ),
          SizedBox(
            width: 3.5,
          ),
          Text(
            counter,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
