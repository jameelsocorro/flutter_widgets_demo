import 'package:flutter/material.dart';

enum CustomButtonType { Filled, Outlined, Shadowed }

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final CustomButtonType type;
  final Color color;
  final double borderRadius;
  final Color textColor;
  final TextStyle textStyle;

  const CustomButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.height,
    this.width,
    this.margin,
    this.type = CustomButtonType.Filled,
    this.color = const Color(0xFF1DA1F2),
    this.borderRadius = 30,
    this.textColor = Colors.white,
    this.textStyle = const TextStyle(
      fontSize: 15,
      color: Colors.white,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
            color: type == CustomButtonType.Outlined ? Colors.transparent : color,
            border: Border.all(color: color, width: 1),
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              if (type == CustomButtonType.Shadowed)
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 30,
                  color: Color.fromRGBO(0, 0, 0, 0.30),
                ),
            ]),
        child: Center(
          child: Text(
            text,
            style: textStyle.copyWith(
              color: type == CustomButtonType.Outlined ? color : textColor,
            ),
          ),
        ),
      ),
    );
  }
}
