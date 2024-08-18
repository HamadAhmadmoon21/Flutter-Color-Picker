import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class HueColorRingPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const HueColorRingPicker({super.key,required this.onColorChanged,required this.pickerColor});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButtonWidget(
        text: "Hue Ring Picker With Hex Input",
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(500),
                          bottom: Radius.circular(100)
                      )
                  ),
                  content: SingleChildScrollView(
                    child: HueRingPicker(
                        onColorChanged: onColorChanged,
                        pickerColor: pickerColor
                    ),
                  ),
                );
              }
          );

        },
    );

  }
}
