import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/navbar.dart';
import 'package:flutter_my_dog/screens/signupscreen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
   TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;
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
                      color: Color.fromARGB(255, 34, 34, 34) ,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150),
                        ),
                      ),
                      child: InkWell(
                        
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 200,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,top: 50),
                              child: Column(
                                children: [
                                  Text('HELLO', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,color: Colors.white 
                                      // color: Colors.black54,
                                    ),),
                                  Text(
                                    'Welcome Back...',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,color: Colors.white
                                      // color: Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: Form(
                  child:Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 80),
                    child: Column(
                      children: [
                        TextFormField(
                           style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            
                             prefixIcon: Icon(Icons.person,color: Colors.white,),
                            hintText: 'User Name',
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                        fillColor: Colors.grey.shade900,
                        focusColor: Colors.white,
                        filled: true,
                          ),
                         onEditingComplete: () {
                FocusScope.of(context).nextFocus();
                            }  
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                            controller: _passwordController,
                            obscureText: showPassword ? false : true,
                                               
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.security,color: Colors.white,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.grey.shade900,
                        focusColor: Colors.white,
                          suffixIcon:  InkWell(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: Icon(
                                  showPassword
                                      ? Icons.visibility_off
                                      : Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                              ),
                          ),
                          onEditingComplete: () {
                FocusScope.of(context).unfocus();
                            } 
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton.icon(onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>navPage()));}, icon: Icon(Icons.check_circle_outline_outlined,color: Colors.white,), label: Text('Login',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey.shade900)
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 200),
                          child: Row(
                            children: [
                              Text('Does not have an account?'),
                              TextButton(onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>signupscreen()));}, child:Text('SignUp',style: TextStyle(decoration: TextDecoration.underline),))
                            ],
                          ),
                        )
                      ],
                       
                    ),
                  ), 
                 
                ) ,
              )
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