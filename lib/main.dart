import 'package:flutter/material.dart';
import 'package:selectcolor/color_pickers/blocky_color.dart';
import 'package:selectcolor/color_pickers/hsv_color_picker.dart';
import 'package:selectcolor/color_pickers/hue_ring_picker.dart';
import 'package:selectcolor/color_pickers/multiple_color.dart';
import 'package:selectcolor/color_pickers/next_color.dart';
import 'package:selectcolor/color_pickers/slider_color_picker.dart';
import 'package:selectcolor/color_pickers/slider_only_color_picker.dart';
import 'package:selectcolor/consts/divider_widet.dart';

main(){
  runApp(
   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    )
  );
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color currentColor=Colors.green;

  void changeColor(Color color)=>setState(() {
    currentColor=color;
  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:currentColor ,
        centerTitle: true,
        title:const Text("Color Picker",style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold
        ),),
      ),

      body: Column(

        children: [
         const SizedBox(height: 50,),
          BlockyColor( pickerColor: currentColor, onColorChanged:changeColor ,),
          const DividerWidget(),
          MultipleColorPicker( pickerColor: currentColor, onColorChanged: changeColor),
          const DividerWidget(),
          NextColor(pickerColor: currentColor, onColorChanged: changeColor),
          const DividerWidget(),
          SliderColorPicker(onColorChanged: changeColor, pickerColor: currentColor),
          const DividerWidget(),
          HueColorRingPicker(onColorChanged: changeColor, pickerColor: currentColor),
          const DividerWidget(),
          SliderOnlyColorPicker(pickerColor: currentColor, onColorChanged: changeColor),
          const DividerWidget(),
          HSVColorPicker(pickerColor: currentColor, onColorChanged: changeColor,
          )

        ],
      ),

    );
  }
}
