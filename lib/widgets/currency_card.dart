import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  
  final String name, code, amount;
  final IconData icon;

  const CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.icon});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(31, 33, 35, 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10,),
            Row(children: [
              const Text('amount',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                ),
              ),
              const SizedBox(width: 5,),
              Text(code, 
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.7),
                fontSize: 20,
                ),
              ),
            ],
            ),
          ],
          ),
          Transform.scale(
            scale: 2.8,
            child: Transform.translate(
              offset: const Offset(8,11),
              child: Icon((icon),
              color: Colors.white,
              size: 70,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  } 
}