import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconContainer extends StatelessWidget {
  IconContainer({required this.icon, required this.counter, super.key});
  
  // Added variables to use it in the widget.
  // and these variables are required in the constructor
  final IconData icon;
  final String counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
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
