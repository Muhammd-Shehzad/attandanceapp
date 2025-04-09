import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.close),
          hintText: 'Search...',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            // Default border
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Color(0xFF64B5F6), width: 2),
          ),
        ),
      ),
    );
  }
}
