import 'dart:io';

import 'package:flutter/material.dart';

typedef OnImageSelected = Function(File imageFile);

class ImagePickerWidget extends StatelessWidget {
  final File imageFile;
  final OnImageSelected onImageSelected;
  const ImagePickerWidget(
      {super.key, required this.imageFile, required this.onImageSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.cyan.shade300,
            Colors.cyan.shade800,
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          image: imageFile != null
              ? DecorationImage(image: FileImage(imageFile), fit: BoxFit.cover)
              : null),
      child: IconButton(
        onPressed: () {
          _showPickerOptions(context);
        },
        icon: Icon(
          Icons.camera_alt,
        ),
        iconSize: 90,
        color: Colors.white,
      ),
    );
  }

  void _showPickerOptions(BuildContext context) {}
}
