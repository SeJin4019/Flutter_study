import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  const CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted});

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge, // 오버플로우가 되면 어떻게 할지를 정하는 흘러 넘치고 있는 아이콘 설정
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : const Color(0xFF1F2123), // isInverted가 true이면 배경색을 흰색으로, false 일때는 지정색으로
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: isInverted ? Colors.black : Colors.white.withOpacity(0.8),
                          fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              // 마냥 크기만 키우면 위젯 전체가 같이 커짐 아이콘 크기를 변경
                scale: 2.2, // 부모에 영향 없이 크기를 바꿀 수 있음
                child: Transform.translate(
                  // 아이콘 위치를 변경
                  offset: const Offset(8, 15),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 88,
                  ),
                ))
          ],
        )
    );
  }
  
}