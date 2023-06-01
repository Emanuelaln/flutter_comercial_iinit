import 'package:app2/utilits/colors.dart';
import 'package:app2/utilits/dimensions.dart';
import 'package:app2/widgets/small_text.dart';
import 'package:flutter/material.dart';

//Inclusao de Sobre mais
class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String primeiroHalf;
  late String segundoHalf;
  bool hiddenText = true;
  double textHeigth = Dimensions.screenHeigth / 5.63;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeigth) {
      primeiroHalf = widget.text.substring(0, textHeigth.toInt());
      segundoHalf =
          widget.text.substring(textHeigth.toInt() + 1, widget.text.length);
    } else {
      primeiroHalf = widget.text;
      segundoHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: segundoHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: primeiroHalf)
          : Column(
              children: [
                SmallText(
                    height: 1.8,
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (primeiroHalf + "...")
                        : (primeiroHalf + segundoHalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Ver mais",
                        color: AppColors.maincolor,
                      ),
                      Icon(
                        //Manipulação de icones up down
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.maincolor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
