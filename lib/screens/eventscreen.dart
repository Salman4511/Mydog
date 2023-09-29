import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/newevent.dart';

class eventScreen extends StatelessWidget {
  const eventScreen({super.key});

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
                                'Events',
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
        
         Padding(
  padding: const EdgeInsets.only(top: 100),
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => addEvent()),
      );
    },
    child: Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 217, 103) ,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: Column(
          children: [
            Row(
              children: [
               Image.network('https://cdn-icons-png.flaticon.com/128/3269/3269019.png',scale:1.1,),
                SizedBox(width: 30,),
                Column(
                  children: [
                    Text(
                      'Saved',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                  
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  ),
),
       Padding(
  padding: const EdgeInsets.only(top: 250),
  child:   ElevatedButton.icon(onPressed: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => addEvent()),
      );}, icon: Icon(Icons.add,color: Colors.black ,),
   label: Text('Add Event',
  style:TextStyle(
    color: Colors.black 
  ) ,),
  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 143, 204, 255)))  ,),
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