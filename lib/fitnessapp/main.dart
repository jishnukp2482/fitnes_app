import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fittnes_app/fitnessapp/components/bodymeasurement.dart';
import 'package:fittnes_app/fitnessapp/components/appbar.dart';
import 'package:fittnes_app/fitnessapp/components/diet.dart';
import 'package:fittnes_app/fitnessapp/components/glasswater.dart';
import 'package:fittnes_app/fitnessapp/components/mealstoday.dart';
import 'package:fittnes_app/fitnessapp/components/water.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: fitnesshome(),
    debugShowCheckedModeBanner: false,
  ));
}

class fitnesshome extends StatefulWidget {
  @override
  State<fitnesshome> createState() => _fitnesshomeState();
}

class _fitnesshomeState extends State<fitnesshome> {
 int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          appbar(),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Medeterenian diet",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Details",
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 86, 154),
                            fontSize: 20,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            diet(),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Meals Today",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Customize",
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 86, 154),
                                fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            mealstoday(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Body Measurement",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Today",
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 86, 154),
                                fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            bodymeasurement(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Water",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "AquaSmartBottle",
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 86, 154),
                                fontSize: 20),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.arrow_forward)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            water(),
            const SizedBox(
              height: 20,
            ),
            galsswater(),
            const SizedBox(
              height: 20,
            ),
          ]))
        ],
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Colors.white,
            Color.fromARGB(255, 3, 86, 154),
          ]),
        ),
        child: IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            Icons.home,
            Icons.favorite,
            Icons.search,
            Icons.person,
          ],
          activeIndex: selectedindex,
          onTap: (index) {
            setState(() {
              selectedindex = index;

           });
          },
          activeColor: const Color.fromARGB(255, 3, 86, 154),
          gapLocation: GapLocation.center,
          shadow: Shadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 3),
            blurRadius: 8,
          ),
          inactiveColor: Colors.grey,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 40,
          rightCornerRadius: 40,
          elevation: 5,
        
        

          ),
    );
  }
}
