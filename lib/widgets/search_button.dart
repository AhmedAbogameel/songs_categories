import 'package:flutter/material.dart';

import '../constants.dart';

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search,color: Colors.grey,size: 30,),
            SizedBox(width: 10,),
            Text('Artists, songs, or podcasts',style: TextStyle(fontWeight: FontWeight.w500,color: kPrimaryColor,fontSize: 20),),
          ],
        ),
        decoration: BoxDecoration(
            color: kAccentColor,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
      onTap: (){
        // navigate to search field view
      },
    );
  }
}
