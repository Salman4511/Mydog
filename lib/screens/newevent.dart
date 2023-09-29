import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/addreminder.dart';

class addEvent extends StatelessWidget {
  const addEvent({super.key});

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
                                'Add Event',
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
  child: Container(
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network('https://thumb.ac-illust.com/cf/cf96c7be7f75b8546ba073915764b302_t.jpeg'),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined,),style: ButtonStyle(
          iconSize: MaterialStatePropertyAll(45)
        ),)
      ],
    ),
  ),
),
 Padding(
  padding: EdgeInsets.only(top: 20,right: 40,left: 40),
  child:   Column(
  
    children: [
  
          TextField(
  
      
  
          decoration: InputDecoration(
  
      
  
            labelText:'    Event Name' ,
  
      
  
          ),
  
      ),
  
      TextField(
  
        decoration: InputDecoration(
  
          labelText:'    Event Venue',
  
        )
  
      ),
  
       TextField(
  
        decoration: InputDecoration(
  
          labelText:'    Event Date',
  
        )
  
      ),
      SizedBox(height:20,),
      ElevatedButton(onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder:(context)=>addReminder() ));
      }, child: Text('Add',style: TextStyle(
        color: Colors.white
      ),),style: ButtonStyle(backgroundColor:
        MaterialStatePropertyAll(Colors.black)),)
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