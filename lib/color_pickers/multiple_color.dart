import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class MultipleColorPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const MultipleColorPicker({super.key,required this.pickerColor,required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButtonWidget(
        text: "Multiple Color Picker",
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  title: const Text("Choose Colors"),
                  content: MultipleChoiceBlockPicker(
                      pickerColors: const [],
                      onColorsChanged: (val){}
                  ),
                );
              }
          );
        },
    );

  }
}
