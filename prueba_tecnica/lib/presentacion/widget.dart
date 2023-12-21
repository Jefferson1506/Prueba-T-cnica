// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget logo(BuildContext context) {
  return Container(
    alignment: Alignment.topCenter,
    width: MediaQuery.sizeOf(context).width * 0.40,
    height: MediaQuery.sizeOf(context).height * 0.20,
    decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/Logo.png"))),
  );
}
