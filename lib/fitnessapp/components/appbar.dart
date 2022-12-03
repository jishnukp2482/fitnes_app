import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
       backgroundColor: Colors.transparent,
            pinned: true,
            floating: true,
            title: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("My Diary",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(60, 40)),
          gradient: LinearGradient(colors:[
           Colors.white,
            Color.fromARGB(255, 3, 86, 154),
            
            
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft)
        ),
       
     ),
     
            actions: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.calendar_month,color: Colors.black,),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Center(child: Text("15 May",style: TextStyle(color: Colors.black,fontSize: 15),)),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10,left: 5,top: 5,bottom: 5),
               
                  child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                ),
              
            ]
    );
  }
}
