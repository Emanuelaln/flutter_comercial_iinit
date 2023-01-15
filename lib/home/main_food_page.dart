import 'package:flutter/material.dart';
import 'package:app2/utilits/colors.dart';
import 'package:app2/widgets/big_text.dart';
import 'package:app2/widgets/small_text.dart';
import 'food_page_body.dart';

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
        //Showing de Header A aparte de Cabeca
        Container(
          child: Container(
            //Inserindo a a margem da coluna
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Angola",
                      color: AppColors.maincolor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Luanda",
                          color: Colors.black54,
                        ),
                        Icon(
                            Icons.arrow_drop_down) //Selecionando o icon de drop
                      ],
                    )
                  ],
                ),
                //Coluna de Pesquisa
                Center(
                  // centralizando
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ), // Insercao de icone de pesquisa na coluna
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors
                          .maincolor, //uso de cor da classe de Appcolors
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //Showing de border A partde do corpo
        FoodPageBody(),
      ],
    ));
  }
}
