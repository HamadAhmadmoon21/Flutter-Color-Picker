import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class BlockyColor extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const BlockyColor({super.key,required this.onColorChanged,required this.pickerColor});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButtonWidget(
        text:"Blocky Color" ,
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  title: const Text('Select Color'),
                  content: BlockPicker(
                      pickerColor:pickerColor ,
                      onColorChanged: onColorChanged),
                );
              });
        }
    );

  }
}
