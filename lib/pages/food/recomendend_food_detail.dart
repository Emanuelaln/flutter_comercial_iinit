import 'package:app2/utilits/colors.dart';
import 'package:app2/utilits/dimensions.dart';
import 'package:app2/widgets/app_icon.dart';
import 'package:app2/widgets/big_text.dart';
import 'package:app2/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//Inclusao de Detalhes da Comida
class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          //inclusao de  Icons
          SliverAppBar(
            toolbarHeight: 90,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            //inclusao de IMG
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimensions.font26,
                        text: "Barra de Detalhes Sliver")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/pizza1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //inclusão de Texto
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "Garanto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata fritaGaranto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata fritaGaranto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata fritaGaranto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata fritaGaranto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata fritaGaranto que não vai se arrepender, o sabor fica divinoO prato principal é basicamente bife com batatas fritas e um molho especial, que é bem gostoso. Atendimento mediano.Restaurante de 1 prato só: bife e batata frita.. mas não é assim tão simples pois o molho da carne demora 2 dias para ficar pronto! Um vinho acompanha bem o prato e o preço não é exorbitante.. só não compare com um PF de bife e batata frit"),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Inclusao de - ou + Na incrementação
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.heigth10,
              bottom: Dimensions.heigth10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.maincolor,
                    icon: Icons.remove),
                BigText(
                  text: "2000\ KZ " + " X " + " 0 ",
                  color: AppColors.mainBlackiconColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.maincolor,
                    icon: Icons.add),
              ],
            ),
          ),
          //Inclusao final
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.maincolor,
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
                    text: "\2000KZ| Adicionar",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.maincolor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
