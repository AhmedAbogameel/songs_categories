import 'package:flutter/material.dart';
import '../constants.dart';

class NothingToShow extends StatelessWidget {
  final int pageIndex;
  final Function onPressed;

  NothingToShow({this.pageIndex, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: sizeFromHeight(context, 4,removeAppBarSize: false),),
        Text('Nothing here to show'),
        RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          onPressed: onPressed,
          child: Text('Explore'),
          color: Colors.pink,
        ),
      ],
    );
  }
}
