import 'package:app2/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utilits/colors.dart';
import '../utilits/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, //Alinhamento do texto e icones no inicio
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ), //inclusao de texto na segunda coluna
        SizedBox(
          height: Dimensions.heigth10,
        ), //separando o texto de icones de baixo
        Row(
          //pra inclusao das estrelas
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: AppColors.maincolor,
                  size: 15,
                );
              }), //incluindo a estrela como a funcao de retorno
            ),
            SizedBox(
              width: 10,
            ), // Separando a direita  com a estrela
            SmallText(text: "4,6"), // Inclusao de texto
            SizedBox(
              width: 10,
            ), //Separando a direita
            SmallText(text: "1290"), //inclusao de texto
            SizedBox(
              width: 10,
            ), //Separando a direita
            SmallText(text: "Comentarios"), //Inlusao de texto
          ],
        ),
        SizedBox(
          height: Dimensions.heigth20,
        ), //Separando pra baixo
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                //inclusao do primeiro icone e texto
                icon:
                    Icons.circle_sharp, //Incluindo o icone de circulo na funcao
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                //inclusao do  segundo icone e texto
                icon: Icons.location_on, //Incluindo o icone de localizacao
                text: "3.5Km",
                iconColor: AppColors
                    .maincolor), //Incluindo a cor do icone de localizacao
            IconAndTextWidget(
                //inclusao do terceiro icone  com o texto
                icon: Icons
                    .access_time_rounded, //Incluindo o icone de  Horario na funcao
                text: "30min",
                iconColor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
