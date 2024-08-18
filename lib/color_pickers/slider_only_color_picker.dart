import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';


class SliderOnlyColorPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const SliderOnlyColorPicker({super.key,required this.pickerColor,required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
        text: "Slider-only Color Picker",
        pickerColor: pickerColor,
        onPressed: (){
          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  contentPadding: const EdgeInsets.all(0),
                  titlePadding: const EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(

                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  content: SingleChildScrollView(

                    child: SlidePicker(
                      pickerColor: pickerColor,
                      onColorChanged: onColorChanged,
                      indicatorBorderRadius: const BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                  ),
                );
              }
          );
        }
    );


  }
}
