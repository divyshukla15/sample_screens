
import 'package:flutter/material.dart';
 int selectedOption=0;
class UplaodPage extends StatefulWidget {
  const UplaodPage({super.key});

  @override
  State<UplaodPage> createState() => _UplaodPageState();
}

class _UplaodPageState extends State<UplaodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choosy",
                      style:TextStyle(fontSize:35, color :Colors.red ,fontWeight :FontWeight.w600))
      ),
   body: Container( margin: EdgeInsets.only(left: 20, right:15),  
     child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Image.network("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")),
          ],
        ),
        
     
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            minLines: 2, 
            maxLines: 10,
            decoration: InputDecoration(
              border :OutlineInputBorder(),
              
              hintText: 'Tell us about your fit..',
           //   hintText: 'Tell us about your fit..',
              //prefixText: "hi how",
            )
          ),
        ),
        
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('(240 character limit)', style: TextStyle(color: Colors.red, fontSize: 15,),textAlign: TextAlign.left,),
          ],
        ),
     
      // ignore: prefer_const_constructors
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.loyalty,
                    size: 40, 
                    color: Colors.red),
                     Text('Tag the brands',style: TextStyle(fontSize:23,color :Colors.red,fontWeight :FontWeight.w600)),
              ],
            ),
                
               
                Icon(Icons.arrow_forward_ios_outlined, color: Colors.red,size: 30)
          ],
        ),
      ),
     
     
     
        const Padding(
          padding: EdgeInsets.only(top:8.0),
          child: Column( crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Privacy:",style: TextStyle(fontSize:23,color :Colors.red,fontWeight :FontWeight.w600,),textAlign: TextAlign.start,),
            ],
          ),
        ),
     
        
         const Row(
           children: [RButtton(),
             Text("Post to the world(recommended)",style: TextStyle(color:Colors.black,fontWeight :FontWeight.w500,fontSize: 19)),
              
           ],
         ),
             const Row(
               children: [
                 RButtton(),    
           Text("Post to just friends",style: TextStyle(color:Colors.black,fontWeight :FontWeight.w500,fontSize: 19)),
               ],
             ),
          
          const Row(
            children: [
              RButtton(),
               Text("Post to the world, hide from friends",style: TextStyle(color:Colors.black,fontWeight :FontWeight.w500,fontSize: 19)),
            ],
          ),
           
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Hide Username?",style: TextStyle(fontSize:23,color :Colors.red,fontWeight :FontWeight.w600),),
               SwitchExample(),
             ],
           ),
         ),
         const Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         //crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             TextButton(onPressed: null, child: Text('Cancel',style: TextStyle(fontSize:23,color :Colors.red,fontWeight :FontWeight.w600))),
              TextButton(onPressed: null, child: Text('Post',style: TextStyle(fontSize:23,color :Colors.red,fontWeight :FontWeight.w600))),
           ],
         )
       ],
     ),
   ),
       );
  }
}

class RButtton extends StatefulWidget {
  const RButtton({super.key});

  @override
  State<RButtton> createState() => _RButttonState();
}

class _RButttonState extends State<RButtton> {
  //int value;
  //int selectedOption=0;
  @override
  Widget build(BuildContext context) {
    return  Radio(
      value: 1, 
          groupValue: selectedOption,
          activeColor: Colors.red, 
        fillColor: MaterialStateProperty.all(Colors.red), 
          splashRadius: 23,
          onChanged: (value){
            setState((){
              selectedOption =value!;
            });
           }, 
    );
  }
}







class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
