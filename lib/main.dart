import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Player {
  String? name;
  Player();
}

void main() {
  var jason = Player();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
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
                  )
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
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                    ),
                    child:const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                      child: Text(
                        "Transfer",
                        style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                 ),
                 Container(child:const Text("Request"),
                 ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
