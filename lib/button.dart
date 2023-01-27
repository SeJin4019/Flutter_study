import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final String text; // 주기적으로 변화에서 사용할 걸 선언
  final Color bgColor;
  final Color textColor;

  const Button({super.key, required this.text, required this.bgColor, required this.textColor}); // 꼭 선언해줘야함 아니면 불평함


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: bgColor, // amber
        borderRadius: BorderRadius.circular(45),),
      child: Padding( // const 때문에 오류 나는거임 임의의 값으로 변할거기 때문에
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
