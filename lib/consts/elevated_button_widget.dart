import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color pickerColor;
  final String text;
  final Function() onPressed;
  const ElevatedButtonWidget({
    super.key,required this.text,required this.pickerColor,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: pickerColor,
            shadowColor: pickerColor.withOpacity(.1)
        ),
        child: Text(text,style: TextStyle(
            color: useWhiteForeground(pickerColor)? Colors.white:Colors.black
        ),
        )
    );
  }
}
