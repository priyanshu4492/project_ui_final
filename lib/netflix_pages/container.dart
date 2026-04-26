import 'package:flutter/material.dart';
class Container_page extends StatelessWidget {
  final String img;
  const Container_page({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
         
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
      
          ),
          child: Image.asset(img,fit: BoxFit.cover,),
      ),
    );
  }
}