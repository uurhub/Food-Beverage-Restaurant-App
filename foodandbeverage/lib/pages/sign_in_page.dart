import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2F302B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints.expand(height: 250),
              child: Image.asset("assets/images/F&B_Logo.png", scale: 1.5,),
            ),
            const Text("Sign In",style: TextStyle(color: Color(0xffE4E3D3), fontSize: 40)),
            _emailTextformfield(),
            _emailTextformfield(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: TextButton(onPressed: (){}, child: 
                  Text("Don't have an account",style: TextStyle(color: Color(0xffE4E3D3)),))
                ),
              TextButton(onPressed: (){}, child: 
              Text("Forgat Password",style: TextStyle(color: Color(0xffE4E3D3)),))
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _emailTextformfield extends StatelessWidget {
  const _emailTextformfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
        child: TextFormField(
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
}