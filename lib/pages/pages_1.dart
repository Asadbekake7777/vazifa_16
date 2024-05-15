import 'package:flutter/material.dart';
import 'package:vazifa_16/pages/pages_2.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


class Pageshome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Let's start your\nSchedule activity", textAlign: TextAlign.center , style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
                const SizedBox(height: 5,),
                const Text("Quickly see your upcoming event, task,\nconference calls, weather, and more", textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.grey),),
                const SizedBox(height: 10,),
                Image.asset("assets/images/pagesimages.jpg"),
              ],
            ),



            const SizedBox(height: 25,),
            ZoomTapAnimation(
              child: Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: Colors.blue.shade900),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SreenPages(),),);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            const SizedBox(height: 15,),

            
            Row(
              children: [
                const SizedBox(width: 5,),
                ZoomTapAnimation(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Color.fromARGB(255, 248, 245, 245)),
                    child: Center(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(Icons.apple, color: Colors.black,),
                          ),
                          const Text("Apple", style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                ZoomTapAnimation(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Color.fromARGB(255, 248, 245, 245)),
                    child: Center(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {}, 
                            icon: Image.asset("assets/images/googleicon.jpg", height: 30, width: 30,),
                          ),
                          const Text("Google", style: TextStyle(color: Colors.black,),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                const SizedBox(width: 80,),
                const Text("You Have Account ?", style: TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w400),),
                Text("Log in", style: TextStyle(fontSize: 10, color: Colors.blue.shade900, fontWeight: FontWeight.bold),),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
