import 'package:app2/utilits/colors.dart';
import 'package:app2/utilits/dimensions.dart';
import 'package:app2/widgets/app_column.dart';
import 'package:app2/widgets/app_icon.dart';
import 'package:app2/widgets/big_text.dart';
import 'package:app2/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //inclusao da Img
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodImgSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit
                              .cover, // Inclusão pra cobrir a imagem toda na tela
                          image: AssetImage("assets/image/food33.png"))),
                )),
            //Inclusao de Icones
            Positioned(
                top: Dimensions.heigth45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios),
                    AppIcon(icon: Icons.add_shopping_cart_outlined)
                  ],
                )),
            // Inclusao do C
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularFoodImgSize - 20,
                child: Container(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.heigth20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppColumn(
                          text: "Biffe Com batatas",
                        ),
                        SizedBox(
                          height: Dimensions.heigth20,
                        ),
                        BigText(text: "Sobre"),
                        //Inclusao de texto sobre
                        SizedBox(
                          height: Dimensions.heigth20,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text:
                                    "Garanto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata frita"),
                          ),
                        )
                      ],
                    )))
            //Inclusão de Sobre mais
          ],
        ), //Inclusao de Container final
        bottomNavigationBar: Container(
          height: Dimensions.bottomHeigthBar,
          padding: EdgeInsets.only(
              top: Dimensions.heigth30,
              bottom: Dimensions.heigth30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2)),
          ), //Inclusao de container remoção e adição
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    //inclusao de tamanho
                    top: Dimensions.heigth20,
                    bottom: Dimensions.width20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    BigText(text: "0"),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
                    )
                  ],
                ),
              ),
              //inclusao de Valor a pagar
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.heigth20,
                    bottom: Dimensions.width20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: BigText(
                  text: "\900KZ| Adicionar",
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.maincolor),
              )
            ],
          ),
        ));
  }
}
