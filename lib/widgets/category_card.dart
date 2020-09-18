import 'package:flutter/material.dart';
import 'package:songs_categories/constants.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final String text;
  CategoryCard({@required this.color,@required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(bottom: 7),
        width: sizeFromWidth(context, 2.3),
        height: sizeFromHeight(context, 6,removeAppBarSize: false),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
          color: color,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20,left: 20,),
                child: Text(text,style: TextStyle(fontSize: 20),softWrap: true,),
              ),
              Positioned(
                bottom: -30,
                top: 0,
                right: -30,
                child: Transform.rotate(
                    angle: 0.5,
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('assets/images/album.png')),
              ),
            ],
          ),
        ),
      ),
      onTap: (){
        // navigate to details screen
      },
    );
  }
}
