import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const  AppColumn({super.key, required this.text});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(               //Wrap er kaz ki Akhane??
              children: List.generate(5, (index) {
                return Icon(Icons.star,color: AppColors.mainColor,size: Dimensions.height15,);   //Children er por [] use hoy nai kn?? return use korlam kn??
              }) ,

            ),
            SizedBox(width: 10,),
            SmallText( text: "4.5", color: null, ),
            SizedBox(width: 10,),
            SmallText( text: "1228", color: null,),
            SizedBox(width: 10,),
            SmallText( text: "Comments", color: null,),
          ],
        ),
        SizedBox(height: Dimensions.height10,),
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.8km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: AppColors.iconColor2)
          ],

        )
      ],
    );
  }
}
