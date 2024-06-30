import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/%08currency_card.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.6),
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  'Total Balance',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.8), 
                      fontSize: 22,
                    ),
                  ),
                SizedBox(height: 5,
                  ),
                Text(
                  '\$5 194 482',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1), 
                      fontSize: 48,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                SizedBox(height: 15,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: "Transfer", bgColor: Colors.amber, textColor: Colors.black,),
                    Button(text: "Request", bgColor: Color.fromRGBO(31, 33, 35, 1), textColor: Colors.white,),
                  ],
                ),
                SizedBox(height: 60),
                Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Wallets",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  ),
                ), 
                Text("View All",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                    ),
                   ),
                  ],
                ),
                SizedBox(height: 25,
                ),
                CurrencyCard(
                  name: 'Euro', 
                  code: 'EUR', 
                  amount: '6 428', 
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,),
                CurrencyCard(
                  name: 'Bitcoin', 
                  code: 'BTC', 
                  amount: '9 731', 
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  order: 2,),
               CurrencyCard(
                  name: 'Dollar', 
                  code: 'USD', 
                  amount: '3 581', 
                  icon: Icons.attach_money_rounded, 
                  isInverted: false,
                  order: 3,),
              CurrencyCard(
                name: 'Won', 
                code: 'KRW', 
                amount: '2 135 462', 
                icon: Icons.android_sharp,  //won ₩ icon doesn't exist
                isInverted: true,
                order: 4,),
            CurrencyCard(
                name: 'Yen', 
                code: 'JPY', 
                amount: '51 628', 
                icon: Icons.currency_yen_rounded,  //won ₩ icon doesn't exist
                isInverted: false,
                order: 5,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
