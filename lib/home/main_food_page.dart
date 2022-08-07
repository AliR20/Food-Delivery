import 'package:e_commerce_model/home/food_page_body.dart';
import 'package:e_commerce_model/utils/colors.dart';
import 'package:e_commerce_model/utils/dimensions.dart';
import 'package:e_commerce_model/widgets/big_text.dart';
import 'package:e_commerce_model/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Showing the header
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.height45,
              bottom: Dimensions.height15,
            ),
            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: 'Bangladesh',color: AppColors.mainColor,),
                    Row(
                      children: [
                        SmallText(text: 'Narsingdi',color: Colors.black54,),
                        Icon(Icons.arrow_drop_down_rounded),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: Dimensions.height45,
                  width:Dimensions.height45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: Dimensions.iconSize24,
                  ),
                ),
              ],
            ),
          ),
          //Showing the body
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ],
      ),
    );
  }
}
