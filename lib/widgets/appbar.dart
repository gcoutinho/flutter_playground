import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Image.asset(
      'assets/logo.png',
      width: 100,
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
  );
}
