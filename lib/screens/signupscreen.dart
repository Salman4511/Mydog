import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/landingscreen1.dart';
import 'package:flutter_my_dog/screens/loginscreen.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  TextEditingController _passwordController = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0) ,
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTrcM1wj0cM1lYaAOh32FVI5Dfs4kB-59cnw&usqp=CAU'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
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
                                  'signup',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
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
                  padding: const EdgeInsets.only(top: 50,left: 30,right: 30),
                  child: Container(
                    child: Form(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.0LvP1YUJ2stgbrp2srwnFQHaHa?pid=ImgDet&w=203&h=203&c=7&dpr=1.3'),
                            radius: 70,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 222, 222, 222),
                                    focusColor: Colors.white,
                                    hintText: '  First Name',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Color.fromARGB(255, 222, 222, 222),
                                    focusColor: Colors.white,
                                    hintText: '  Last Name',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 222, 222),
                              focusColor: Colors.white,
                              hintText: 'Address',
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.app_registration_rounded,color: Colors.black,),
                            ),
                          ),
                          SizedBox(height: 4,),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 222, 222),
                              focusColor: Colors.white,
                              hintText: 'Phone',
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.phone,color:  Colors.black,),
                            ),
                          ),
                          SizedBox(height: 4,),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 222, 222),
                              focusColor: Colors.white,
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.supervised_user_circle,color:  Colors.black,),
                            ),
                          ),
                          SizedBox(height: 4,),
                          TextFormField(
                            obscureText: !showPassword,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 222, 222),
                              focusColor: Colors.white,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.lock_clock,color:  Colors.black,),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: Icon(
                                  showPassword
                                      ? Icons.visibility_off
                                      : Icons.remove_red_eye,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4,),
                          TextFormField(
                            obscureText: !showPassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(255, 222, 222, 222),
                              focusColor: Colors.white,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.lock_clock_rounded,color:  Colors.black,),
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: Icon(
                                  showPassword
                                      ? Icons.visibility_off
                                      : Icons.remove_red_eye,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 4,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Landing1()));
                              },
                              child: Text('SignUp'),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
