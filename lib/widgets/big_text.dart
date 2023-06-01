import 'package:app2/utilits/dimensions.dart';
import 'package:flutter/cupertino.dart';

//Classe pra criacao de um texto em grande
class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow Overflow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 20,
      this.Overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: Overflow,
      style: TextStyle(
        fontFamily: "Roboto",
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
