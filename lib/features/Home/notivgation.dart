import 'package:flutter/material.dart';

class notivigation extends StatefulWidget {
  const notivigation({super.key});

  @override
  State<notivigation> createState() => _notivigationState();
}

class _notivigationState extends State<notivigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('haloo')
          ],
        ),
      ),
    );
  }
}