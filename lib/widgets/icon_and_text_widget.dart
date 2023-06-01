// Criacao de uma coluna de icone testos e widgets pra incluir por baixos das colunas do tipo dacomida localização etc
import 'package:app2/utilits/dimensions.dart';
import 'package:app2/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon; //Declaracao de icon
  final String text; // Declaracao de texto
  // SAJSDHHDSA
  final Color iconColor;

  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor})
      : super(key: key); // CONSTRUTOR

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ), //insercao do primeiro icon(cor)
        SizedBox(
          width: 5,
        ), //Separando a direita
        SmallText(
          text: text,
        ), //iclusao de texto (Normal) e a cor
      ],
    );
  }
}
