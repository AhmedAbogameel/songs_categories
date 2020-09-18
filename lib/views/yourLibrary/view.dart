import 'package:flutter/material.dart';
import 'package:songs_categories/widgets/nothing_to_show.dart';

class YourLibraryView extends StatelessWidget {
  final int pageIndex;
  final Function onPressed;

  YourLibraryView({this.pageIndex, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return NothingToShow(
      onPressed: onPressed,
      pageIndex: pageIndex,
    );
  }
}
