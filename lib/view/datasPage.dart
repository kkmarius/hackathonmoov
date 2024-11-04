import 'package:flutter/material.dart';

class DatasPage extends StatefulWidget {
  const DatasPage({super.key});

  @override
  State<DatasPage> createState() => _DatasPageState();
}

class _DatasPageState extends State<DatasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Container(
      child: Text("Mon text"),
        ),
    );
  }
}