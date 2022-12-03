import 'dart:html';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class diet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
       
          child: Container(
        height: MediaQuery.of(context).size.height * 0.32,
        width: MediaQuery.of(context).size.width * 0.2,
            decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
          topRight: Radius.circular(60),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 8,
                  color: Color.fromARGB(255, 3, 86, 154),
                ),
              ],
            ),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 20),
                      child: Container(
                        height: 40,
                        width: 2,
                         color: const Color.fromARGB(255, 3, 86, 154),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10,top: 20),
                          child: Text("Eaten",style: TextStyle(color: Colors.grey,fontSize: 17),),
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: 
                              
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.transparent,
                               
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image(image: AssetImage("assets/images/eaten.png",),fit: BoxFit.fill,)),
                              ),
                           ),
                           const SizedBox(width: 2,),
                            
                            const Text("1301",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            const SizedBox(width: 2,),
                            const Text("Kcal",style: TextStyle(color: Colors.grey,),)
                          ],
                        ),
                        
                      ],
                    )
                  ],
                ),
                
                const SizedBox(height: 30,),
                 Positioned(
                  top: 60,
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 20),
                        child: Container(
                          height: 40,
                          width: 2,
                           color: const Color.fromARGB(255, 3, 86, 154),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10,top: 20),
                            child: Text("Burned",style: TextStyle(color: Colors.grey,fontSize: 17),),
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: 
                                
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.transparent,
                              
                                  child: SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(image:AssetImage("assets/images/burned.png",),fit: BoxFit.fill, )),
                                ),
                             ),
                             const SizedBox(width: 2,),
                              
                              const Text("110",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              const SizedBox(width: 2,),
                              const Text("Kcal",style: TextStyle(color: Colors.grey,),)
                            ],
                          ),
                          
                        ],
                      ),
                    ],
                                 ),
                 ),
                 
                Positioned(
                  
                  top: 145,
                  child:Padding(
                    padding: const EdgeInsets.only(left: 40,right: 40),
                    child: Container(height: 1.5,width: 300,
                    color: Colors.grey.shade300,),
                  )),
                 
                  Positioned(
                    top: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40),
                      child: Container(
                        
                        height:90,
                        width:300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Carbs"),
                              LinearPercentIndicator(
                                width: 70,
                                linearGradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 196, 187, 187),
                                  Color.fromARGB(255, 3, 86, 154),
                                   
                                 
                                ]),
                                percent: 0.7,
                                backgroundColor: Colors.grey.shade200,
                                lineHeight: 5,
                                animationDuration: 1500,
                                animation: true,
                                barRadius: const Radius.circular(50),
                              ),
                              const Text("12g Left",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Protein"),
                                LinearPercentIndicator(
                                  width: 70,
                                  linearGradient: const LinearGradient(colors: [
                                     Color.fromARGB(255, 196, 187, 187),
                                    Colors.pink,
                                      
                                  ]),
                                  percent: 0.7,
                                  backgroundColor: Colors.grey.shade200,
                                  lineHeight: 5,
                                  animationDuration: 1500,
                                  animation: true,
                                  barRadius: const Radius.circular(50),
                                ),
                                const Text("30g Left",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                             Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("FAt"),
                                LinearPercentIndicator(
                                  width: 70,
                                  linearGradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 196, 187, 187),
                                    Colors.yellow,
                                    
                                  ]),
                                  percent: 0.7,
                                  backgroundColor: Colors.grey.shade200,
                                  lineHeight: 5,
                                  animationDuration: 1500,
                                  animation: true,
                                  barRadius: const Radius.circular(50),
                                ),
                                const Text("10g Left",style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top:  30,
                    right: 30,
                    child: CircularPercentIndicator(
                      radius: 50,
                      maskFilter: const MaskFilter.blur(BlurStyle.solid,1),
                      lineWidth: 12,
                      restartAnimation: true,
                      linearGradient: const LinearGradient(colors: [
                        
                        Color.fromARGB(255, 156, 156, 243),
                         Color.fromARGB(255, 3, 86, 154),
                      ]),
                      animation: true,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundWidth: 3,
                      animationDuration: 2000,
                      percent: 0.6,
                      rotateLinearGradient: false,
                      ),
                  ),
                  
                  const Positioned(
                    top: 60,
                    right: 55,
                    
                    child: Text("1200",style: TextStyle(fontSize: 25,color:   Color.fromARGB(255, 3, 86, 154),),)),
                  const Positioned(
                    top: 87,
                    right: 58,
                    child: Text("Kcal left ",style: TextStyle(fontSize: 11,color: Colors.grey),)),
              ],),
          ),
    );
  }
}
