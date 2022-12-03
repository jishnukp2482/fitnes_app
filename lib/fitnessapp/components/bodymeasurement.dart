import 'package:flutter/material.dart';

class bodymeasurement extends StatelessWidget {
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
              color:  Color.fromARGB(255, 3, 86, 154),
              blurRadius: 8,
              offset: Offset(0, 5)
            ),
          ]
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.start ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Weight",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     const Text("210.5",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 3, 86, 154)),),
                     const Text("lbs",style: TextStyle(color:  Color.fromARGB(255, 3, 86, 154),fontSize: 30),)
                    ],
                  ),
                 
                ],

              ),
            ),
             Positioned(
              top: 35,
              right: 30,
               child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.access_alarms_rounded,color: Colors.black87,),
                            const Text("Today 8:26 AM",style: TextStyle(color: Colors.black87),)
                          ],
                        ),
                        const Text("In body smart scale",style: TextStyle(color:Color.fromARGB(255, 3, 86, 154),fontSize: 17,fontWeight: FontWeight.w500),)
                      ],
                    ),
             ),
             Positioned(
              top: 120,
               child: Padding(
                 padding: const EdgeInsets.only(left:30 ,right: 20),
                 child: Container(
                  width: 400,
                  height: 1.5,
                  color: Colors.grey.shade300,
                 ),
               ),
             ),
             Positioned(
              top: 122,
               child: Padding(
                 padding: const EdgeInsets.only(left: 45,right: 30),
                 child: Container(
                  
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("185 cm",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                            const SizedBox(height: 4,),
                            Text("Height",style: TextStyle(color: Colors.grey.shade500,fontSize: 18),)
                          ],
                        ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("27.3 BMI",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                            const SizedBox(height: 4,),
                            Text("Overweight",style: TextStyle(color: Colors.grey.shade500,fontSize: 18),)
                          ],
                        ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("20%",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                            const SizedBox(height: 4,),
                            Text("Fat",style: TextStyle(color: Colors.grey.shade500,fontSize: 18),)
                          ],
                        ),

                        
                      ],
                    ),
                  ),
                 ),
               ),
             )
          ],
        ),
      ),
    );
  }
}
