
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class NextColor extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const NextColor({super.key,required this.pickerColor,required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
        text: "Kiss me with your Finger",
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  content: SingleChildScrollView(
                    child: MaterialPicker(
                      pickerColor: pickerColor,
                      onColorChanged: onColorChanged,
                      enableLabel: true,
                      portraitOnly: false,
                    ),
                  ),
                );
              }
          );
        },
    );

  }
}
