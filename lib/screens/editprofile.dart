import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/navbar.dart';


class editProfile extends StatelessWidget {
   editProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
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
                                'Edit Profile',
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
                padding: const EdgeInsets.only(top: 90,left: 30,right: 30),
                child: Container(
                  child: Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: CircleAvatar(backgroundImage: 
                            NetworkImage('https://th.bing.com/th/id/OIP.0LvP1YUJ2stgbrp2srwnFQHaHa?pid=ImgDet&w=203&h=203&c=7&dpr=1.3')
                                          ,radius: 70,
                                      child: Icon(Icons.add_a_photo,color: Colors.white,),
                                          ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                    filled: true ,
                                    hintText: '  First Name',
                                     hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                                  ),
                                ),
                              ),
                            
                            ],
                          ),
                          SizedBox(height: 4,),
                         TextFormField(
                                  decoration: InputDecoration(
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                    filled: true,
                                    hintText: '  Last Name',
                                     hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                                  ),
                                ),
                           SizedBox(height: 4,),
                          TextFormField(
                                  decoration: InputDecoration(
                                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                 
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                    filled: true,
                                    hintText: '  Address',
                                     hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                                  ),
                                ),
                           SizedBox(height: 4,),
                           TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                  
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                    filled: true,
                                    hintText: '  Phone',
                                     hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                                  ),
                                ),
                           SizedBox(height: 4,),
                        
                           SizedBox(height: 4,),
              
                       
                           ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>navPage()));}, 
                      child:Text('Save Changes',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                      style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.blue)) ,),
                        ],
                      ), 
                                   ),
                                   
                ),
                
              ),
             
            ],
            
          ),
          
        
        ),
      ),
      
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

