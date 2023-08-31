import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../../utils/dimensions.dart';
import '../utils/dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController= PageController(viewportFraction: .85);
  var _currPageValue=0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  get color => Null;

  @override
  void initState(){
    super .initState();
    pageController.addListener(() {

setState(() {
  _currPageValue =  pageController.page!;
  print("Current value is"+_currPageValue.toString());

       });
    });
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          color: Colors.white70,    ///redAccent color a problem hoye chilo
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
                return _buildPageItem(position);    ///_buildPageIten(Position er laz ki akhane ??
                return Container();
              }),
        ),
    //dots
    new DotsIndicator(                            //DotsIndicator
    dotsCount: 5,
    position: _currPageValue,
    decorator: DotsDecorator(
     // activeColor: AppColors.mainColor,
     // activeColor: Colors.black26,
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        //popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30) ,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2,),
                child: SmallText(text: "Food pairing", color: null, ),    //Colors problem
              ),
            ],
          ),
        ),
        //list of food and Images
           ListView.builder(
           physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
             itemCount: 10,
             itemBuilder: (context,index,){
               return Container(

                 margin: EdgeInsets.only(left: Dimensions.width10,right:0,bottom: Dimensions.height10),  //child and children have to be clear
                 child: Row(
                   children: [

                     //image section

                     Container(
                       width :Dimensions.ListViewImgSize,
                         height: Dimensions.ListViewImgSize,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(Dimensions.radius20),
                             color: Colors.white38,
                             image: DecorationImage(
                               fit:  BoxFit.cover,
                                 image: AssetImage(
                                     "assets/images/image11.jpg"
                                 )
                             )

                         )
                     ),
                     // text container
                     Expanded(
                       child: Container(
                         height: Dimensions.ListViewTextContSize,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(Dimensions.radius20),
                             bottomRight: Radius.circular(Dimensions.radius20)
                           ),
                           color: Colors.white,
                         ),
                         child: Padding(
                           padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment:MainAxisAlignment.center,
                             children: [
                               BigText(text: "Pasta  Vagetable Noodles"),
                               SizedBox(height: Dimensions.height10,),
                               SmallText( text: "with souce and spicy", color: null,),
                               SizedBox(height: Dimensions.height10,),

                               Expanded(child:
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                               )),


                             ],
                           ),
                         ),
                       ),
                       
                     )

                   ],
                 ),

               );

             }),

      ],
    );
  }
  Widget _buildPageItem(int index){

    Matrix4 matrix =new Matrix4.identity();
    if(index ==_currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans , 0);
    }else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans , 0);

    }else if(index ==_currPageValue.floor()-1){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans , 0);

    }else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(           ///Container return korbo kn ?
          height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius60),
              color: index.isEven? Color(0xFFfcab88): Color(0xFF89dad0) ,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image10.png")
              ),
            ),
          ),
          Align(
            child: Container(
                 alignment: Alignment.bottomCenter,              ///Container return korbo kn ?
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimensions.width30,right: Dimensions.width30,top: Dimensions.width100 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0,5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5,0)
                  )
                ]

              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10,left: 15,right: 15),
                child: AppColumn(text: "Chinese Burger"),
              ),

            ),
          )
        ],
      ),
    );
  }

}
