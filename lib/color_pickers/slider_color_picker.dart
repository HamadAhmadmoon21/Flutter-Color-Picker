import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class SliderColorPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const SliderColorPicker({super.key,required this.onColorChanged,required this.pickerColor});

  @override
  Widget build(BuildContext context) {
    return   ElevatedButtonWidget(
        text: "Slider Color Picker",
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  contentPadding: const EdgeInsets.all(0),
                  titlePadding: const EdgeInsets.all(0),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: onColorChanged,

                      colorPickerWidth: 300,
                      pickerAreaHeightPercent: .7,
                      displayThumbColor: true,
                      paletteType: PaletteType.hsl,
                      pickerAreaBorderRadius:const BorderRadius.only(
                          topRight: Radius.circular(2),
                          topLeft: Radius.circular(2)
                      ),
                    ),
                  ),
                );
              }
          );

        },
    );

  }
}
