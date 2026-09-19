import 'package:flutter/material.dart';

void main() {
  runApp(const SchoolKitApp());
}

class SchoolKitApp extends StatelessWidget {
  const SchoolKitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("School Kit"));
  }
}
