import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.deepPurple[600],
                  height: 20,
                  child: Text('Hello'),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.deepOrange[600],
                  height: 20,
                  child: Text('Hello'),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(child: Container(color: Colors.amber)),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}
