import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/adddogscreen.dart';

class kennelPage extends StatelessWidget {
  const kennelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: Color.fromARGB(255, 236, 231, 231) ,

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
                      color: Colors.blue,
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
                      color: Colors.blue,
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
                                'Kennel',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white ,
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
  padding: const EdgeInsets.only(top: 30),
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => addDog()),
      );
    },
    child: Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 210, 163) ,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.black ,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text(
                      'Charlie',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold 
                      ),
                    ),
                    Text(
                      'Labrador',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    )
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
  padding: const EdgeInsets.only(top: 380),
  child:   ElevatedButton.icon(onPressed: (){Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => addDog()),
      );}, icon: Icon(Icons.add,color: Colors.black ,),
   label: Text('Add Dog',
  style:TextStyle(
    color: Colors.black 
  ) ,),
  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue))  ,),
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
  color: Colors.white,
);