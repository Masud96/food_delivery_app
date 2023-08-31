import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overflow;
   BigText({Key?key, this.color= const Color(0xFF332d2b),
    required this.text,
    this.size=0,
    this.overflow=TextOverflow.ellipsis

  }) :  super(key: key);              ///(don't understand)
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize:size==0? Dimensions.font20:size,
        fontWeight: FontWeight.w400
      ),

    );
  }
}
