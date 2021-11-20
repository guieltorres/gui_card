import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key? key, required this.info, required this.icon})
      : super(key: key);

  final IconData icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.indigo,
        ),
        title: Text(
          info,
          style: TextStyle(
            color: Colors.indigo.shade900,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
