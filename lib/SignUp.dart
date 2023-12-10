import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State<SignUp> createState()=> _SignUpState();

}

class _SignUpState extends State<SignUp>{

  final _fromfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app name"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
            child: Form(
                key: _fromfield,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15), // Set the desired radius
                      child: Image.asset(
                        "images/no_img.jpg",
                        height: 130,
                        width: 130,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter Name";
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),

                      ),
                      validator: (value){
                        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);

                        if(value.isEmpty){
                          return "Enter Email";
                        }else if(!emailValid){
                          return "Enter Valid Email";
                        }
                      },
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffix: InkWell(
                            onTap: (){
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle ? Icons.visibility :Icons.visibility_off),
                          )

                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter Password";
                        }else if(passController.text.length <6){
                          return "Password Length Should be more than 6 characters";
                        }
                      },
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap: (){
                        if(_fromfield.currentState!.validate()){
                          print("Success");
                          emailController.clear();
                          passController.clear();
                          nameController.clear();
                        }
                      },
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:  BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Sign Up",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          )

                      ),
                    ),
                    SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style:  TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        TextButton(
                            onPressed: (){}, child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )

                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See our Privacy policy",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    )
                  ],
                ))) ,
      ),
    );
  }
}