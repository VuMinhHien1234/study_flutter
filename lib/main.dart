import 'package:flutter/material.dart';

import 'package:first_app/gradient-container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 143, 20, 171),
        body: Gradient_Container(const Color.fromARGB(255, 91, 11, 228),
            const Color.fromARGB(255, 21, 1, 56)),
      ),
    ),
  );
}
