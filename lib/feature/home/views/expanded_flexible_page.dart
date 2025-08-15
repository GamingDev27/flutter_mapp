import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.orange)),
          Expanded(flex: 2, child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}
