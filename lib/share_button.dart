import 'package:flutter/material.dart';

shareButton(String title, Function()? onPressed) {
  return Container(
    width: double.infinity,
    height: 60,
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: ElevatedButton( 
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, color: Colors.black,),
      ),
    ),
  );
}