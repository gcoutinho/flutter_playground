import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    title: Image.asset(
      'assets/logo.png',
      width: 100,
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
  );
}
