import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../../utils/app_colors.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is"+MediaQuery.of(context).size.height.toString()); //buji nai
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45,bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [

                     /* Text("Country",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                      Text("City",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),*/

                      BigText(color: AppColors.mainColor, text: "Bangladesh",),
                      Row(
                        children: [
                          SmallText( text: "Dhaka", color: null,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),


                     /* Image.asset('assets/images/image7.jpg',width: 200,)*/

                    ],
                  ),
                  Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSize24,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          //showing the body
         Expanded(child: SingleChildScrollView(
           child:  FoodPageBody(),
         )),

        ],
      ),
    );
  }
}


//............................................................