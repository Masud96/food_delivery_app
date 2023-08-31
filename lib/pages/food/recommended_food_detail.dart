import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size:Dimensions.font26,text: "Chinese Biriani with Chicken ")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/images/image12.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Welche Arten von Werken unterliegen dem Urheberrecht? Das Urheberrecht verleiht dem Inhaber das exklusive Nutzungsrecht am Werk – mit einigen Ausnahmen. Wenn eine Person ein Originalwerk schafft, das auf einem körperlichen Datenträger festgehalten wird, hat diese Person automatisch das Urheberrecht an diesem Werk.Viele unterschiedliche Werke können urheberrechtlich geschützt werden, darunter:Audiovisuelle Werke wie TV-Sendungen, Serien, Filme und Onlinevideos.Tonaufnahmen und Musikkompositionen.Schriftliche Werke wie Vorträge, Artikel, Bücher und Musikkompositionen.Visuelle Werke wie Gemälde, Poster und Werbeanzeigen.Videospiele und Computersoftware.Bühnenwerke wie Theaterstücke und Musicals.Small Diversity business concern means a small business concern that is at least fifty-one (51) percent unconditionally owned by one or more individuals who are both socially and economically diverse, or a publicly owned business that has at least fifty-one (51) percent of its stock unconditionally owned by one or more socially and economically diverse individuals and that has its management and daily business controlled by one or more such individuals. This term also means a small business concern that is at least fifty-one (51) percent unconditionally owned by an economically diverse Indian tribe or Native Hawaiian Organization, or a publicly owned business that has at least fifty-one (51) percent of its stock unconditionally owned by one of these entities, that has its management and daily business controlled by members of an economically diverse Indian tribe or Native Hawaiian organization.Recyclable Materials means materials that are separated from mixed municipal solid waste for the purpose of recycling or composting, including paper, glass, plastics, metals, automobile oil, batteries, source-separated compostable materials, and sole source food waste streams that are managed through biodegradative processes. Refuse-derived fuel or other material that is destroyed by incineration is not a recyclable material. (Minn. Stat. § 115A.03, Subd. 25a).Aus dem Englischen übersetzt-Traditionelle Lebensmittel sind Lebensmittel und Gerichte, die über Generationen weitergegeben oder seit vielen Generationen verzehrt werden.The study also discusses how food interacts with memory recall. “When we have experiences, we filter them through our senses, including tastes and smells,” explains Rebecca Lockwood, a neurolinguist interviewed by Photobox. “We then link these experiences together in what is called a gestalt. So in the future, the brain associates things that happen in the future with those past events, which elicits the same emotions and feelings. We can create memories around food and cooking by being intentional with the experiences we want to have and thinking about the feelings we want to associate. For example, baking a certain type of biscuit with your children over the course of several different events can create memories that are linked together. We can create these kinds of experiences in many different situations. With friends, family and in relationships. This can create a strong bond between relationships and create memories that can easily be recalled at a later date using the same smells, tastes and feelings."),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min ,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
                right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconColor:Colors.white,
                  backgroundColor:AppColors.mainColor,
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,),
                BigText(text: "\$10.99 "+" X "+ " 0 ",color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(iconColor:Colors.white,
                  backgroundColor:AppColors.mainColor,
                  icon: Icons.add,
                  iconSize: Dimensions.iconSize24,),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    
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
        ],
      ),
    );
  }
}
