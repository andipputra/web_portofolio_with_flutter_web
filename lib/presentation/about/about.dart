import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: "Hello I'M ",
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                      text: 'Andi Pratama Putra',
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.w900))
                ]),
          ),
          Text(
            'Mobile Developer enthusiast',
            style: Theme.of(context).textTheme.headline5,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
            color: Colors.teal,
            child: Container(
              padding: EdgeInsets.all(24),
              child: Text(
                'A Fresh graduate who love getting new challenges and achievements. Currently I am learning about application development, especially mobile application development. The programming languages that I am studying are Kotlin and Dart.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
