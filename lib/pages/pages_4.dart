import 'package:flutter/material.dart';
import 'package:vazifa_16/pages/pages_5.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CountryPage extends StatefulWidget {
  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(width: 15,),
                Text("Country of residance", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 15,),
                Text("Add your Phone number for Verification ID", style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey, fontSize: 12),),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)), prefixIcon: const Icon(Icons.poll_sharp, size: 25, color: Colors.grey,), hintText: "^ +62 | 000 000 000", hintStyle: const TextStyle(color: Colors.black, fontSize: 15)),
                  ),
                ],
              ),
            ),
        
            const SizedBox(height: 5,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text("Send it aother way ?", style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey, fontSize: 10),),
                const SizedBox(width: 5,),
                Text("Email", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue.shade400, fontSize: 11),),
              ],
            ),
        
            const SizedBox(height: 340,),
            ZoomTapAnimation(
              child: Container(
                height: 70,
                width: 320,
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(15)), color: Colors.blue.shade900),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmPage()),);
                    },
                    child: const Text("Continue", style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontSize: 24),),
                  ),
                ),
              ), 
            ),
            const SizedBox(height: 10,),
        
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By continuing, you agree to Loana's", style: TextStyle(color: Colors.grey, fontSize: 10),),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Terms of Use", style: TextStyle(fontSize: 10, color: Colors.black),),
                SizedBox(width: 5,),
                Text("&", style: TextStyle(fontSize: 10, color: Colors.black),),
                SizedBox(width: 5,),
                Text("Privacy Policy", style: TextStyle(fontSize: 10, color: Colors.black),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
