import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 127, 186, 228);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Colors.black,
  Colors.white
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) 
  : assert (selectedColor >= 0 && selectedColor <= _colorThemes.length -1,'Colors must be between 0 a ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.light,
        );
        
  }
}
