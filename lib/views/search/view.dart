import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:songs_categories/constants.dart';
import 'package:songs_categories/widgets/category_card.dart';
import 'package:songs_categories/widgets/grid_view.dart';
import 'package:songs_categories/widgets/search_button.dart';
import 'package:songs_categories/widgets/section_title.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          SizedBox(
            height: sizeFromHeight(context, 5, removeAppBarSize: false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Search',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SearchButton(),
          SectionTitle('Your Top genres'),
          CustomGridView(children: [
            CategoryCard(color: Colors.red, text: 'Rock'),
            CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
            CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
            CategoryCard(color: Colors.deepOrange, text: 'Latin'),
          ]),
          SectionTitle('Browse All'),
          CustomGridView(children: [
            CategoryCard(color: Colors.red, text: 'Rock'),
            CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
            CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
            CategoryCard(color: Colors.deepOrange, text: 'Latin'),
            CategoryCard(color: Colors.red, text: 'Rock'),
            CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
            CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
            CategoryCard(color: Colors.deepOrange, text: 'Latin'),
          ]),
        ],
      ),
    );
  }
}

/*
Container(
            height: sizeFromHeight(context, 6 , removeAppBarSize: false) * 8,
            child: GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,childAspectRatio: 1.5),
              children: [
                CategoryCard(color: Colors.red, text: 'Rock'),
                CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
                CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
                CategoryCard(color: Colors.deepOrange, text: 'Indie'),
                CategoryCard(color: Colors.red, text: 'Rock'),
                CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
                CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
                CategoryCard(color: Colors.deepOrange, text: 'Indie'),
                CategoryCard(color: Colors.red, text: 'Rock'),
                CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
                CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
                CategoryCard(color: Colors.deepOrange, text: 'Indie'),
                CategoryCard(color: Colors.red, text: 'Rock'),
                CategoryCard(color: Colors.deepPurpleAccent, text: 'Indie'),
                CategoryCard(color: Colors.teal, text: 'Folk &\nAcoustic'),
                CategoryCard(color: Colors.deepOrange, text: 'Indie'),
              ],
            ),
          )
 */