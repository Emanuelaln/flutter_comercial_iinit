import 'package:app2/utilits/colors.dart';
import 'package:app2/widgets/big_text.dart';
import 'package:app2/widgets/icon_and_text_widget.dart';
import 'package:app2/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dots_indicator/dots_indicator.dart';

//Criacao de barra de  menu de comidas
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(
      viewportFraction: 0.85); //controlador de paginas em movimentos
  var _currPageValue = 0.0; //variavel de controlo de paginas
  double _scaleFactor = 0.0;
  double _heigth = 220;
  @override
  void initState() {
    //funcao pra aumento de zoom e troca de container
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        // print("A movimentação é " +   _currPageValue.toString()); //contagem da movimentacao do container
      });
    });
  }

  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.redAccent,
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildePageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }

  Widget _buildePageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      // verificado caso a nao obter nenhum container a mais ele não movimenta
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _heigth * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(
            0, currTrans, 0); // Margem da escala de movimentação
    } else if (index == _currPageValue.floor() + 1) {
      // controle pra o proximo slide(container ) pra facilitar a movimentacão
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _heigth * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(
          1, currScale, 1); // Margem da escala de movimentação
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      // controle pra o proximo slide(container ) pra facilitar a movimentacão
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _heigth * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(
          1, currScale, 1); // Margem da escala de movimentação
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _heigth * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        //posicionamento do container da imagem
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(
                left: 10,
                right:
                    10), //cria alinhamento e separacao entre as imagens dentro do container
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven
                    ? Color(0xFF69c5df)
                    : Color(
                        0xFF9294cc), //insercao de cores diferentes na coluna
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/image/foodmac1.png"))), //insercao de imagem na coluna
          ),
          Align(
            //alinhamento pra a segunda imagem do container a baixo a coluna de baixo
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        //Insercao de sombra na coluna
                        color: Color(0xFFe8e8e8e),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                //insercao de child pra  inclusao de botons textos, icones na segunda coluna
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, //Alinhamento do texto e icones no inicio
                  children: [
                    BigText(
                        text:
                            "Macarrão com molho"), //inclusao de texto na segunda coluna
                    SizedBox(
                      height: 10,
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
                        SmallText(text: "Coments"), //Inlusao de texto
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ), //Separando pra baixo
                    Row(
                      children: [
                        IconAndTextWidget(
                            //inclusao do primeiro icone e texto
                            icon: Icons
                                .circle_sharp, //Incluindo o icone de circulo na funcao
                            text: "Normal",
                            iconColor: AppColors.iconColor1),
                        IconAndTextWidget(
                            //inclusao do  segundo icone e texto
                            icon: Icons
                                .location_on, //Incluindo o icone de localizacao
                            text: "0.7Km",
                            iconColor: AppColors
                                .maincolor), //Incluindo a cor do icone de localizacao
                        IconAndTextWidget(
                            //inclusao do terceiro icone  com o texto
                            icon: Icons
                                .access_time_rounded, //Incluindo o icone de  Horario na funcao
                            text: "32min",
                            iconColor: AppColors.iconColor2)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
