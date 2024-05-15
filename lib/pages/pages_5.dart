import 'package:flutter/material.dart';
import 'package:vazifa_16/pages/pages_6.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ConfirmPage extends StatefulWidget {
  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
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
                Text("Confirm your phone number", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 19),),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
                SizedBox(width: 15,),
                Text("Check your message, becau we send you a code\nfor Verification", style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey, fontSize: 10),),
              ],
            ),


            const Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  Wrap(
                    children: [
                      Chip(
                        label: Text(" 0 ", style: TextStyle(fontSize: 25, color: Colors.grey),),
                      ),
                      SizedBox(width: 18,),
                      Chip(
                        label: Text(" 0 ", style: TextStyle(fontSize: 25, color: Colors.grey),),
                      ),
                      SizedBox(width: 18,),
                      Chip(
                        label: Text(" 0 ", style: TextStyle(fontSize: 25, color: Colors.grey),),
                      ),
                      SizedBox(width: 18,),
                      Chip(
                        label: Text(" 0 ", style: TextStyle(fontSize: 25, color: Colors.grey),),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            const SizedBox(height: 5,),
            const Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.error_outline, size: 11, color: Colors.grey,),
                SizedBox(width: 10,),
                Text("Helper text", style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey, fontSize: 10),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstConfirmPage()));
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
