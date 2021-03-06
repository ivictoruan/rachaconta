import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final IconData? icon;


  const ActionButton(
    this.text, { 
    Key? key, 
    this.foregroundColor = const Color(0xFFF6F6F9), 
    this.backgroundColor = const Color(0xFFFA4A0C),
    required this.onPressed, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return TextButton(      
      onPressed: onPressed, // método
       child: Container(
         padding: EdgeInsets.symmetric(vertical: 14, horizontal: _screenWidth * 0.25  ),
         decoration: BoxDecoration( 
           borderRadius: BorderRadius.circular(15), 
           color: backgroundColor,                     
           ), 
         child: Text(
           text, 
           style: TextStyle(color: foregroundColor)
                      
         )
        ),
    );
  }
}