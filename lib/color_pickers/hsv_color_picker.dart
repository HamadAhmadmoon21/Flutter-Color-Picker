import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:selectcolor/consts/elevated_button_widget.dart';

class HSVColorPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  const HSVColorPicker({super.key,required this.pickerColor,required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    final textController=TextEditingController();
    return ElevatedButtonWidget(
        text:"HSV ColorPicker\n(You Own Text field)" ,
        pickerColor: pickerColor,
        onPressed: (){

          showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  scrollable: true,
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  content: Column(
                    children: [
                      ColorPicker(
                        pickerColor: pickerColor, onColorChanged: onColorChanged,
                        colorPickerWidth: 300,
                        pickerAreaHeightPercent: .7,
                        displayThumbColor: true,
                        labelTypes: [],
                        pickerAreaBorderRadius: const BorderRadius.only(

                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(2),

                        ),
                        hexInputController: textController,
                        portraitOnly: true,
                      ),

                      Padding(padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        child: CupertinoTextField(
                          controller: textController,
                          prefix: const Padding(padding: EdgeInsets.only(left: 8),
                            child: Icon(Icons.tag),
                          ),
                          maxLength: 9,
                          inputFormatters: [
                            UpperCaseTextFormatter(),
                            FilteringTextInputFormatter.allow(
                                RegExp(kValidHexPattern)
                            )
                          ],

                        ),
                      )


                    ],
                  ),
                );
              });

        },
    );

  }
}
