import 'dart:html';

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class water extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                offset: Offset(0, 5),
                color: Color.fromARGB(255, 3, 86, 154),
              )
            ]),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "2010",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 3, 86, 154),
                        ),
                      ),
                      const Text(
                        "ml",
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 3, 86, 154),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "of daily goal 3.5L",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 1.5,
                      width: 250,
                      color: Colors.grey.shade300,
                    ),]))),
                   
                    Positioned(
                      top: 130,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.alarm_outlined,
                                    color: Colors.black87,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Today 7:25 AM",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  
                                ],
                              ),
                              const SizedBox(height: 5,),
                                Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Icon(
                            Icons.notifications,
                            color: Colors.redAccent.shade200,
                          ),
                          
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Your bottle is empty,Refill it!",
                            style: TextStyle(
                                color: Colors.redAccent.shade200,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          ],
                        ),
                            ],
                          ),
                     ),
                      
                    ),
                      Positioned(
                        top: 60,
                        right: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          
                          children: [
                          Container(
                         alignment: Alignment.center,
                         height: 40,
                         width: 40,
                        decoration:  const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(0, 5),
                          )
                        ],
                          color: Colors.white, shape: BoxShape.circle),
                      child:  const Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 3, 86, 154),
                        size: 25,
                         ),
                       ),
                      const SizedBox(height: 20,),
                      Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration:  const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            offset: Offset(0, 5),
                          )
                        ],
                          color: Colors.white, shape: BoxShape.circle),
                                          child:  const Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: Icon(
                          Icons.minimize,
                          color: Color.fromARGB(255, 3, 86, 154),
                          size: 25,
                        ),
                       ),
                      ),
                                      
                          ],
                        ),
                      ),
                    Positioned(
                      top: 40,
                      right: 40,
                      child: Container(
                        height: 130,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: LiquidLinearProgressIndicator(
                          center: const Text("72%",style: TextStyle(color: Colors.white,fontSize: 17),),
                          borderRadius: 60,
                          backgroundColor: Colors.grey.shade300,
                          value: 0.7,
                          borderColor: Colors.white,
                          borderWidth: 0.1,
                          direction: Axis.vertical, 
                          valueColor: const AlwaysStoppedAnimation(
                             Color.fromARGB(255, 3, 86, 154),
                             
                          ),
                        ),
                        
                      ),
                    ),
                
            
          ],
        ),
      ),
    );
  }
}
