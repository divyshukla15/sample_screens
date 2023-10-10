import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String txt = 'Unfollow';
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                    child: Text(txt, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                    onPressed: () {
                      setState(() {
                        value= !value;
                        if(value == true){
                          txt="Follow";
                        }else{
                          txt="Unfollow";
                        }
                      });
                    
  });
}
}