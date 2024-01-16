import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      color: Colors.blue,
      child: Center(
        child: Text(
          '© 2024 Durian Mangkau',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}