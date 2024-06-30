import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color.fromRGBO(31, 33, 35, 1);
  final int order; 

  const CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted, required this.order,});
  
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0,order <= 1 ? 0 :(order-1)*(-18)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white: _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 20, left: 30, right:30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(name,
              style: TextStyle(
                color: isInverted ? _blackColor : Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10,),
              Row(children: [
                Text(amount,
                style: TextStyle(
                  color: isInverted ? _blackColor : Colors.white,
                  fontSize: 20,
                  ),
                ),
                const SizedBox(width: 5,),
                Text(code, 
                style: TextStyle(
                  color: isInverted ? _blackColor: Colors.white,
                  fontSize: 20,
                  ),
                ),
              ],
              ),
            ],
            ),
            Transform.scale(
              scale: 2.5,
              child: Transform.translate(
                offset: const Offset(9,12),
                child: Icon((icon),
                color: isInverted ? _blackColor:Colors.white,
                size: 70,
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  } 
}