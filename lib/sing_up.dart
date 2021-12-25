import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/my_home_page.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

final _formKey= GlobalKey<FormState>();
late String email;
late String pass;
TextEditingController nameCont = TextEditingController();
TextEditingController emailCont = TextEditingController();
TextEditingController passCont1 = TextEditingController();
TextEditingController passCont2 = TextEditingController();

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.cyan,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 100,),
                TextFormField(
                  controller: nameCont,
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return "Enter Your Name";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Your Name",
                      suffixIcon: Icon(Icons.email,
                        color: Colors.purple,),
                      hintText: "Enter Your Name",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple
                          )
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: emailCont,
                  validator: (text){
                    if (text == null || text.isEmpty){
                      return "Enter your Email";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Your Email",
                      hintText: "Enter Your Email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: passCont1,
                  validator: (text){
                    if(text == null || text.isEmpty ){
                      return "Enter A Password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter A Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: passCont2,
                  validator: (text){
                    if(text == null || text.isEmpty ){
                      return "Re-Enter Password";
                    }else if (passCont1 != passCont2){
                      return "Password Not Match";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter A Password",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.purple
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>MyHomePage()));
                      }
                    },
                    child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
