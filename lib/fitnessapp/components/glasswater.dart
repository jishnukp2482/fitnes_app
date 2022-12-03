import 'package:flutter/material.dart';

class galsswater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 173, 184, 190),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            const BoxShadow(
              blurRadius: 8,
              offset: Offset(2, 5),
              color:Color.fromARGB(255, 125, 144, 160),
            ),
          ]
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 75,
              child: Column(
                children: [
                  Text("Prepare your stomach for lunch with one\nof two flass of water",
                  style: TextStyle(color: Colors.purple.shade500,fontSize: 17,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
             const Image(image: AssetImage("assets/images/waterglass.png")),
          ],
        ),
      ),
    );
  }
}
