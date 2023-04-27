import 'package:flutter/material.dart';

BoxDecoration gradientBgDecorator() => BoxDecoration(
      gradient: LinearGradient(
        colors: List.from([
          Colors.deepPurple[900],
          Colors.deepPurple[900],
          Colors.deepPurple[800],
          Colors.deepPurple[700],
          Colors.blue[900]
        ]),
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
