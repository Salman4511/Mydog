
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter_my_dog/screens/adddogscreen.dart';
import 'package:flutter_my_dog/screens/newevent.dart';

class homeScreen extends StatefulWidget {
  
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String selectedIcon = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    tag: kBackBtn,
                    child: Card(
                      elevation: 10,
                      shape: kBackButtonShape,
                      child: MaterialButton(
                        height: 50,
                        minWidth: 50,
                        elevation: 10,
                        shape: kBackButtonShape,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: kBackBtn,
                      
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                 Hero(
                    tag: 'title',
                    transitionOnUserGestures: true,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: InkWell(
                        
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  // color: Colors.black54,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
           SizedBox(height:20,),
   Padding(
     padding: EdgeInsets.only(left: 35),
     child: Column(
       children: [
         Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  Container(
                    // color: Colors.amber,
                    height: 30,
                    width: 86,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 47, 210, 255)),
                    child: DropdownButton(
                      value: selectedIcon,
                      onChanged: (newValue) {
                        setState(() {
                          selectedIcon = 's';
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: 'Option 1',
                          child:
                              
                        Text('  Charlie',style: TextStyle(fontWeight: FontWeight.bold),),
                          
                           
                        ),
                        DropdownMenuItem(
                          value: 'Mickey',
                          child:
                        Text('  Mickey'),
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width:200,),
          Padding(
            padding: const EdgeInsets.only(),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.timer,size: 35,))
          ),
         ],
   ),
  Padding(
  padding: const EdgeInsets.only(right: 35, top: 10),
  child: Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 223, 223, 223),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        SizedBox(height: 8,),
        Text(
          'Training Activity',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: LineGraph(
            features: [
              Feature(
                color: Colors.red, 
                data: [0.1, 0.3, 0.2, 0.7, 0.6, 1.0],
              ),
            ],
            size: Size(420, 240),
            labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
            labelY: ['5', '', '', '', '', '30'],
            graphColor: Colors.black87,
          ),
        ),
      ],
    ),
  ),
)
,

Padding(
  padding: const EdgeInsets.only(right: 30, top: 40),
  child: Container(
    height: 220,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromARGB(255, 203, 203, 203),
    ),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Text(
          'Training Programs',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addDog()),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/128/3900/3900369.png', scale:1.2,),
                    Text('Trainings', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addEvent()),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  children: [
                    Image.network('https://cdn-icons-png.flaticon.com/128/8876/8876508.png', scale:1.2,),
                    Text('Food Diet', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
)


       ],
     ),
   )
   
            ]
          )
          ,)
          ,)
    );
  }
}

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  color: Colors.black54,
);
