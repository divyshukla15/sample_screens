import 'package:flutter/material.dart';
import 'bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 246, 11, 3)),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
          );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get text => null;

  

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        leading:const Icon(Icons.search,
                          size: 50, 
                          color: Colors.red
                      ),
        actions: const [Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('350 pts.'
          ,style: TextStyle(fontSize:25,color :Colors.red,
          fontWeight :FontWeight.w500), 
          ),
        ),],
      
        
                      title: const Text("Choosy",
                      style:TextStyle(fontSize:35, color :Colors.red ,fontWeight :FontWeight.w600),
                      
            
          ),),
                  
       body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
          //    Padding(
              //  padding: const EdgeInsets.all(0.0),
                 
                // Image.network(src)             
                 Stack(children: [
                  Image.network("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  Positioned(
                    bottom: 20,
                    left: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up, size: 60,color: Colors.white)))),
                    Positioned(
                    bottom: 20,
                    right: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50,
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_down, size: 60,color: Colors.white ,)))),
                  
                  ]),
          
            //  ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.loyalty,
                size: 50, 
                            color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(left :8.0, right :8.0),
                child: RichText(text: const TextSpan(
                  style: TextStyle(
                  color: Colors.red, fontSize: 21,fontWeight :FontWeight.w700
                ),
                children: <TextSpan>[
                  TextSpan(text:'Lauren178'),
                  TextSpan(text:': Thoughts? For hanging out during the day or whatever idk lol',style: TextStyle(color:Colors.black,fontWeight :FontWeight.w500))
                ]
                )),
              ),
              
               const Row(
                children: [
                  Icon(Icons.watch_later_outlined,size: 50, 
                   color: Colors.red),
                            
                     // ),
                  Text(' 12 hours left',style: TextStyle(
                  color: Colors.red, fontSize: 21,fontWeight :FontWeight.w700)),
                ],
              ),Padding(
                padding: const EdgeInsets.all(0.0),
                 
                // Image.network(src)             
                child: Image.network("https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.loyalty,
                size: 50, 
                            color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(left :8.0, right :8.0),
                child: RichText(text: const TextSpan(
                  style: TextStyle(
                  color: Colors.red, fontSize: 21,fontWeight :FontWeight.w700
                ),
                children: <TextSpan>[
                  TextSpan(text:'Lauren178'),
                  TextSpan(text:': Thoughts? For hanging out during the day or whatever idk lol',style: TextStyle(color:Colors.black,fontWeight :FontWeight.w500))
                ]
                )),
              ),
              
               const Row(
                children: [
                  Icon(Icons.watch_later_outlined,size: 50, 
                   color: Colors.red),
                            
                     // ),
                  Text(' 12 hours left',style: TextStyle(
                  color: Colors.red, fontSize: 21,fontWeight :FontWeight.w700)),
                ],
              )
            ]
          ),
        ),
      ),
      
      );     
}
}
