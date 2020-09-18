import 'package:flutter/material.dart';
import '../constants.dart';

class CustomGridView extends StatelessWidget {
  final List<Widget> children;
  CustomGridView({@required this.children});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeFromHeight(context, 6 , removeAppBarSize: false) * (children.length / 2),
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,childAspectRatio: 1.5),
        children: children,
      ),
    );
  }
}
