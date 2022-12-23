// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:ne_w/pages/Login.dart';
import 'package:ne_w/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Register(),
    );
  }
}
