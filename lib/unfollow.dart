import 'package:flutter/material.dart';
//import 'bottomnav.dart';
import 'buttons.dart';

void main() {
  runApp(AppBar());
}

class UnfollowScreen extends StatefulWidget {
  const UnfollowScreen({super.key, required this.img, required this.name});
  final String img;
  final String name;

  @override
  State<UnfollowScreen> createState() => _UnfollowScreenState();
}

class _UnfollowScreenState extends State<UnfollowScreen> {
  static List<String> names = [
    'Aorel',
    'Abby32',
    'Anna09',
    'Mallory',
    'Maison',
    'Mary',
    'Ben',
    'Tom',
    'Zan',
    'Paul',
    'Harry',
    'Jonathan'
  ];
  static List url = [
    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://yohohindi.com/wp-content/uploads/2022/10/22-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/2-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/3-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/12-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/14-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/26-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/6-whatsapp-dp-Yohohindi.com_-1.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/7-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/11-whatsapp-dp-Yohohindi.com_-1.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/67-whatsapp-dp-Yohohindi.com_.jpg',
    'https://yohohindi.com/wp-content/uploads/2022/10/71-whatsapp-dp-Yohohindi.com_.jpg'
  ];
  final List<UnfollowScreen> dataItems = List.generate(
      names.length,
      (index) => UnfollowScreen(
            name: names[index],
            img: '${url[index]}',
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          //leading:const Icon(Icons.search,
          //                  size: 50,
          //                  color: Colors.red),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.cancel_sharp, size: 50, color: Colors.red),
            ),
          ],
          title: const Text(
            "Choosy",
            style: TextStyle(
                fontSize: 35, color: Colors.red, fontWeight: FontWeight.w600),
          )),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left:18.0, top:8.0, bottom: 8.0),
            child: Row(
              children: [
                Icon(Icons.person, size: 40, color: Colors.red),
                Text('    Following',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.red,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 12),
                      //Container(),
                      child: ListTile(
                        title: Text(dataItems[index].name),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(dataItems[index].img),
                          radius: 30.0,
                        ),
                        trailing: Buttons(),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
