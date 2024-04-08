import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final int id;
  final String iconPath;
  final String labelString;
  final Function onTap;
  const TabItem({super.key, required this.iconPath, required this.labelString, required this.id, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: TextButton(
        onPressed: () {  },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 15,
              height: 15,
              child: Image.asset(iconPath),
            ),
            Text(labelString,style: const TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
