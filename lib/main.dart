import 'package:flutter/material.dart';
import 'package:nomad_flutter/currency_card.dart';

import 'button.dart';

void main() {
  runApp(App()); // 우리 앱의 root
  // runApp 함수 import 된거
  // 하나의 argument를 필요로 함 Widget이란 타입임
}

class App extends StatelessWidget {
  //StatelessWidget를 상속하기 위해서는 build 메서드가 반드시 필수 요건
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // root 앱이라서 MaterialApp(구글,안드로이드)을 사용할지, CupertinoApp(ios) 선택
      home: Scaffold(
        backgroundColor: const Color(0xFF181818), // 임의 지정 색 정할 때 (Color(0xFF"")
        body: SingleChildScrollView( // 넘치는거에 대한 문제
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // all() 전체적으로 margin, only(right,left) 상하좌우 중 한 가지를 구체적으로 정할 수 있는, symmetric horizontal(row), verticl(column)
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80), // 빈 화면을 채워주기 위한 sizedBox
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // 텍스트 정렬 row에서는 수평 방향으로 움직임
                  children: [
                    Column(
                      //column의 mainAxis는 수직 방향, CrossAxis는 수평 방향
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Hey, SeJin",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            )),
                        Text("welcom back!",
                            style: TextStyle(
                                color: Colors.white.withOpacity(1),
                                fontSize: 18)),
                        //withOpacity(1) 완전히 흰색이라는 뜻
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Toatal Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      // dart 클래스 이용해서 위젯 적용
                      text: 'Transfer',
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false, // 색이 없음
                ),
                Transform.translate(
                offset: Offset(0, -20),
                  child: const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true, // 배경색을 흰색으로 변경해야함
                  ),
                ),
                Transform.translate(offset: Offset (0,-40),
                  child: const CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  isInverted: false, // 색이 없음
                ),
          ),

              ],
            )),
      ),
    )
    );
  }
}
