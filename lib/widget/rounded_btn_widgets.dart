import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textstyle;
  final VoidCallback? callBack;

  const RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textstyle,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )

      ), child: icon != null? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Text(btnName,style: textstyle,)
      ],
    ): Text(btnName,style: textstyle,
    ),
    );
  }
}
