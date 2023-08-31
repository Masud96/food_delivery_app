import 'package:get/get.dart';
class Dimensions{
static double screenHeight = Get.context!.height;
static double screenWidth = Get.context!.width;

static double pageView = screenHeight/2.65;
static double pageViewContainer = screenHeight/3.51;
static double pageViewTextContainer = screenHeight/7.2;

//dynamic height padding and margin
static double height10 = screenHeight/77.2;
static double height15= screenHeight/51.5;
static double height20 = screenHeight/38.6;
static double height30 = screenHeight/25.73;
static double height45 = screenHeight/17.15;

//dynamic width padding and margin
static double width5 = screenHeight/154.2;
static double width10 = screenHeight/77.2;
static double width15= screenHeight/51.5;
static double width20 = screenHeight/38.6;
static double width30 = screenHeight/25.73;
static double width100 = screenHeight/7.72;
//Radius
static double radius20 = screenHeight/38.6;
static double radius60 = screenHeight/12.87;
static double radius15 = screenHeight/51.45;

// font

static double font16 = screenHeight/48.25;
static double font20 = screenHeight/38.6;
static double font26= screenHeight/29.7;

//icon size
static double iconSize24 = screenHeight/32.17;
static double iconSize16 = screenHeight/48.25;

//list view size         iphone 8 er screenSize holo 390 but screenSize kivabe bujbo
static double ListViewImgSize =  screenWidth/3.25;
static double ListViewTextContSize = screenWidth/3.9;

//popular food
static double popularFoodImgSize = screenHeight/2.21;

//bottom Height
static double bottomHeightBar120 = screenHeight/6.43;

}