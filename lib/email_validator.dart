import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:stylish/routs/routs.dart';
import 'package:stylish/screens/home_page/home_page.dart';


class EmailValidator extends StatefulWidget {
  const EmailValidator({super.key});

  @override
  State<EmailValidator> createState() => _EmailValidatorState();
}

class _EmailValidatorState extends State<EmailValidator> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text("Email Validator"),
        centerTitle: true,
        elevation: 2,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
            aspectRatio:16/10,
            child: Image.asset("assets/images/intro_img_2.png",),),
            SizedBox(height: 30,),
            Form(
              key: _formKey,
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller:emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.2,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (!RegExp(
                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      ).hasMatch(value)){
                          return "Please enter a valid email";
                      }
                      return null;
                    },
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if(_formKey.currentState!.validate()){
                      print("Successful Login with email: ${emailController.text} ✅");
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }
                    else{
                      return print("Invalid Email ");
                    }
                  },
                  child: Container(
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red.shade500,
                  ),
                  child: Center(child: Text("Login",style: TextStyle(fontSize: 18,fontWeight: .w600,color: Colors.white),)),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
