import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
                child: Image.asset(
                  'assets/logo.png',
                  width: 300,
                  height: 200,
                ),
              ),

              const SizedBox(height: 25,),

              //title

              const Text(
                "Just Do It",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20,),

              //subtitile

              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 60,),

              //start now button

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage(),)),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Center(
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
