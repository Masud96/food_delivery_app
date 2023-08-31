import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../utils/app_colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {   //return container(); R return const Placeholder(); er moddo parthoko ki ??
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
      Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImgSize,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/image13.jpg"
                )
              )
            ),

      )),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],

          )),
          //introduction of food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Chinese Biriani",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height10,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Rice : Wash and soak rice for 30 minutes. In a pan boil 2 ltrs water. Add rice with 2tsp salt. Let it boil until rice is cooked. Make sure the rice is not overcooked as it will be layered with the rest of the ingredients and will be steam cooked as well. As soon as its cooked, immediately drain the remaining water using a sieve. Leave the rice in the sieve for at least 20 minutes to drain the water completely..Noodles:Boil the noodles according to packet instructions. Drain the water through sieve and run cold water through the noodles. Braise with some oil . Let it sit for 15-20 mins..Chicken In a pot heat oil add sesame seeds and saute sliced onions. When they turn slightly golden add chicken pieces with ginger garlic paste. Fry the chicken pieces until the water released from the chicken dries out. Now add chilli flakes, ajinomoto, salt and the three sauces. Fry for few minutes, add 1 cup water. Let it boil and cover cook on medium flame till the chicken is tender. Finish off with a semi dry consistency..Vegetables: Wash and chop the vegetables into juliennes.Mix the vegetables in the prepared chicken. No need to cook it..Final Layering:In a larger pot, layer some noodles, then the prepared chicken and vegetables. Then again noodles, rice and then another layer of chicken and vegetables. Finish off with a layer of rice at the top. Cover tightly and let it cook with steam on low flame for 20-25 mins. Sprinkle with spring onion."))),
                  ],
                ),






              ))
          
          
        ],
      ),

      //bottomNavigationBar......................................................................................

      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar120,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2),

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add,color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),

              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
