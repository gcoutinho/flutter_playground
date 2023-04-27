import 'package:flutter/material.dart';
import 'package:playground/widgets/appbar.dart';

import '../../widgets/gradient_bg.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: gradientBgDecorator(),
        child: Column(
          children: [buildAppBar()],
        ),
      ),
    );
  }
}
