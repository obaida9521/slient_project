import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{
  @override
  State<SignIn> createState()=> _SignInState();

}

class _SignInState extends State<SignIn>{

  final _fromfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
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
              const SizedBox(height: 50),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
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
              SizedBox(height: 20),
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
              SizedBox(height: 60),
              InkWell(
                onTap: (){
                  if(_fromfield.currentState!.validate()){
                    print("Success");
                    emailController.clear();
                    passController.clear();
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius:  BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text("Sign In",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  )

                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style:  TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: (){}, child: Text(
                      "Sign Up",
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