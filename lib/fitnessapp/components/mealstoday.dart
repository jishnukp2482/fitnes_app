import 'package:flutter/material.dart';

class mealstoday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           meals(
            clr1: Colors.teal, 
            clr2:Colors.white38, 
            mealimg: "assets/images/breakfast.png",
             meal: "Breakfast", 
             mealitem1: "Bread",
              mealitem2: "Peanut butter", 
              mealitem3: "Apple",
               calorie: "435"),
               meals(clr1: Colors.deepPurple.shade400, 
               clr2: Colors.white38,
                mealimg:"assets/images/lunch.png" ,
                 meal: "Lunch", 
                 mealitem1: "Salmon", 
                 mealitem2: "Mixed Veggies",
                  mealitem3: "Avocado",
                   calorie: "478"),
                   meals(clr1: Colors.pink.shade300,
                    clr2: Colors.white38,
                     mealimg:"assets/images/snack.png" ,
                      meal: "Snack", 
                      mealitem1: "Tea",
                       mealitem2: "Chips", 
                       mealitem3: "Popcorn", 
                       calorie: "270"),
                       meals(clr1: Colors.lightGreen.shade400, 
                       clr2:  Colors.white38,
                        mealimg: "assets/images/dinner.png", 
                        meal: "Dinner", 
                        mealitem1: "Chappathi",
                         mealitem2: "Fruits",
                          mealitem3: "Milk", 
                          calorie: "300")
          ],
        ),
      ),
    );
  }
}

class meals extends StatelessWidget {
  final Color clr1;
  final Color clr2;
  final String mealimg;
  final String meal;
  final String mealitem1;
  final String mealitem2;
  final String mealitem3;
  final String calorie;
  meals(
      {required this.clr1,
      required this.clr2,
      required this.mealimg,
      required this.meal,
      required this.mealitem1,
      required this.mealitem2,
      required this.mealitem3,
      required this.calorie});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Container(
        height: 200,
        width: 130,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [clr1, clr2]),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(60),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: clr1,
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 15,
              top: -30,
              child: SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(image: AssetImage(mealimg)),
                  ),
                  backgroundColor: Colors.white54,
                ),
              ),
            ),
            
            Positioned(
              top: 50,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    mealitem1,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    mealitem2,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    mealitem3,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(calorie,style: TextStyle(fontSize: 18,color: Colors.white),),
                  ),
                  SizedBox(width: 2,),
                  Text("Kcal",style: TextStyle(fontSize: 12,color: Colors.white),)
                  ],

                  )
                ],
              ),
            ),
           
          
          ],
        ),
      ),
    );
  }
}
