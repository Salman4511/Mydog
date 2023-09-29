import 'package:flutter/material.dart';
import 'package:file_case/file_case.dart';
import 'package:flutter_my_dog/screens/newevent.dart';


class addDog extends StatelessWidget {
   addDog({super.key});
  final FileCaseController firstController = FileCaseController(
      filePickerOptions:
          FilePickerOptions(type: FileType.any, allowMultiple: true),
      tag: 'controller1');

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
                                'Add Dog',
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
                            NetworkImage('https://us.123rf.com/450wm/yuliarudenko/yuliarudenko1903/yuliarudenko190300122/122602687-dog-symbol-icon-round-flat-vector-art-design-color-circle.jpg?ver=6')
                                          ,radius: 70,
                                      child: Icon(Icons.add_a_photo),
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
                                    hintText: '  Pet Name',
                                     hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))
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
                                    hintText: '  DOB',
                                     hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))
                                  ),
                                ),
                           SizedBox(height: 4,),
                          TextFormField(
                                  decoration: InputDecoration(
                                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                 
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                                    hintText: '  Months',
                                     hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))
                                  ),
                                ),
                           SizedBox(height: 4,),
                           TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                                  
                        fillColor: Colors.grey.shade900,
                    focusColor: Colors.white,
                                    hintText: '  Breed',
                                     hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))
                                  ),
                                ),
                           SizedBox(height: 4,),
                        
                           SizedBox(height: 4,),
              
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                FileCase(
                           tag: 'controller1',
                              ),
                              Text('Upload Certificate',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              const FileUploadIconButton(tag: 'controller1',),
                              SizedBox(width: 1,),
                               
                              ],
                            ),
                          ),
                           ElevatedButton(onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>addEvent()));}, 
                      child:Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
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

