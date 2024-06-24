import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Row(
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
              const SizedBox(height: 90),
              const Text(
                'Total Balance',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8), 
                    fontSize: 22,
                  ),
                ),
              const SizedBox(height: 5,
                ),
              const Text(
                '\$5 194 482',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1), 
                    fontSize: 48,
                    fontWeight:FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 15,
                ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(text: "Transfer", bgColor: Colors.amber, textColor: Colors.black,),
                  Button(text: "Request", bgColor: Color.fromRGBO(31, 33, 35, 1), textColor: Colors.white,),
                ],
              ),
              const SizedBox(height: 80),
              const Row(
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
              const SizedBox(height: 25,
              ),
              Container(
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Euro',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(children: [
                        Text('6 428',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text('EUR', 
                        style: TextStyle(
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
                        child: const Icon(Icons.euro_rounded,
                        color: Colors.white,
                        size: 70,
                        ),
                      ),
                    ),
                   ],
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
