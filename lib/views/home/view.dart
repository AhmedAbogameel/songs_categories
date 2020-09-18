import 'package:flutter/material.dart';
import 'package:songs_categories/constants.dart';
import 'package:songs_categories/views/search/view.dart';
import 'package:songs_categories/views/yourLibrary/view.dart';
import 'package:songs_categories/widgets/bottom_nav_bar.dart';
import 'package:songs_categories/widgets/nothing_to_show.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 1;
  void exploreOnPressed(){
    setState(() {
      pageIndex = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List navBarView = [
      _HomeView(
        pageIndex: pageIndex,
        onPressed: exploreOnPressed,
      ),
      SearchView(),
      YourLibraryView(
        pageIndex: pageIndex,
        onPressed: exploreOnPressed,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
          pageIndex: pageIndex,
          onTap: (int index) {
            setState(() {
              pageIndex = index;
            });
          }),
      body: Container(
        child: Center(
          child: navBarView[pageIndex],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            stops: [0.02, 0.4],
            colors: [
              Colors.black12,
              kPrimaryColor,
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  final int pageIndex;
  final Function onPressed;

  _HomeView({this.pageIndex, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return NothingToShow(onPressed: onPressed,pageIndex: pageIndex,);
  }
}
