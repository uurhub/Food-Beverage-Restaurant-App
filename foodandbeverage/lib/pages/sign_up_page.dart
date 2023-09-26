import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  late String email,password,name,surname;
  final formkey = GlobalKey<FormState>();
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;
  bool _isPasswordVisible = false;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2F302B),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 250),
                child: Image.asset("assets/images/F&B_Logo.png", scale: 1.5,),
              ),
              _nameTextformfield(),
              _surnameTextformfield(),
              _emailTextformfield(),
              _passwordTextformfield(),
              const SizedBox(height: 30,),
              _signupButton(),
              const SizedBox(height: 20,),
              const _textbuttons(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _signupButton() {
    return ElevatedButton(onPressed: (){
      if (formkey.currentState!.validate()) {
        formkey.currentState!.save();
        try {
          var userResult = firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
          try {
            final resultData = firebaseFirestore.collection("Users").add({
              "Name": name,
              "Surname": surname,
              "Email": email,
              "Password": password,
            });
            Navigator.pushNamed(context, "/signinpage");
          } catch (e) {
            print(e.toString());
          }
          formkey.currentState!.reset();
        } catch (e) {
          print(e.toString());
        }
      }
    },
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(const Size(200.0, 50.0)),
        ), 
        child: const Text(
          "Sign Up",
          style: TextStyle(
          color: Color(0xff2F302B),
          fontSize: 25,
        )
      ),
    );
  }

  Padding _passwordTextformfield() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "Please fill out this field";
        }
        else{}
        return null;
      },
      onSaved: (value) {
        password = value!;
      },
      obscureText: !_isPasswordVisible,
      cursorColor: Colors.grey,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white,),
      borderRadius: BorderRadius.circular(40)
      ),
      focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffFFDF99)),
      borderRadius: BorderRadius.circular(40),
      ),
      fillColor: Color(0xffFFDF99),
      filled: true,
      hintText: "password",
      suffixIcon: IconButton(onPressed: (){
        setState((){
          _isPasswordVisible = !_isPasswordVisible;
        });
      }, 
      icon: Icon(
        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,))
      ),
    ),
  );
  }

  Padding _emailTextformfield() {
    return Padding(
    padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        validator: (value) {
        if (value!.isEmpty) {
          return "Please fill out this field";
        }
        else{}
        return null;
      },
      onSaved: (value) {
        email = value!;
      },
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.grey,
          textInputAction: TextInputAction.next,
          style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white,),
            borderRadius: BorderRadius.circular(40)
            ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFDF99)),
            borderRadius: BorderRadius.circular(40)
            ),
            fillColor: Color(0xffFFDF99),
            filled: true,
            hintText: "e-mail",
            ),
    ),
  );
  }

  Padding _nameTextformfield() {
    return Padding(
    padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        validator: (value) {
        if (value!.isEmpty) {
          return "Please fill out this field";
        }
        else{}
        return null;
      },
      onSaved: (value) {
        name = value!;
      },
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.grey,
          textInputAction: TextInputAction.next,
          style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white,),
            borderRadius: BorderRadius.circular(40)
            ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFDF99)),
            borderRadius: BorderRadius.circular(40)
            ),
            fillColor: Color(0xffFFDF99),
            filled: true,
            hintText: "Name",
            ),
    ),
  );
  }

  Padding _surnameTextformfield() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        validator: (value) {
        if (value!.isEmpty) {
          return "Please fill out this field";
        }
        else{}
        return null;
      },
      onSaved: (value) {
        surname = value!;
      },
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.grey,
          textInputAction: TextInputAction.next,
          style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white,),
            borderRadius: BorderRadius.circular(40)
            ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffFFDF99)),
            borderRadius: BorderRadius.circular(40)
            ),
            fillColor: Color(0xffFFDF99),
            filled: true,
            hintText: "Surname",
            ),
    ),
  );
  }
}

class _textbuttons extends StatelessWidget {
  const _textbuttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 105),
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, "/signinpage");
            }, child: 
          Text("Already have an account?",style: TextStyle(color: Color(0xffE4E3D3)),))
        ),
      ],
    );
  }
}