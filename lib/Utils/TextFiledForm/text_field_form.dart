import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  final String? text;
  final validationText;
  final controller;

  const TextFieldForm({
    super.key,
    this.text,
    this.validationText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        controller: controller,
        validator: validationText,
        style: const TextStyle(color: Colors.black), // Text inside the field
        decoration: InputDecoration(
          labelText: text,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 3),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
        ),
      ),
    );
  }
}
