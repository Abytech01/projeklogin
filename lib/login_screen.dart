import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
   TextEditingController emailbox = TextEditingController();
    

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState  extends State<LoginScreen> {
  bool statusPassword = true;
  bool statusWarna= true;

  tampilPassword() {
    
      statusPassword = !statusPassword;
    
  }

  gantiWarna() {
    setState(() {
      statusWarna = !statusWarna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: statusWarna ? Colors.blue : Colors.pink,
      body: Column(
        children: [
          TextField(
            controller: widget.emailbox,
          ),
          TextField(
            obscureText: statusPassword,
            decoration: InputDecoration(
              labelText: 'Password edit',
              hintText: 'Enter Your Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon( statusPassword ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  tampilPassword();
                  gantiWarna();
                }, 
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context)=> HomeScreen(
              email: widget.emailbox.text, 
            )));
          }, child: Text('Login')),
          ElevatedButton(
            onPressed: gantiWarna,
            child: const Text('ganti warna'),
          
            )
        ],
      ),
    );
  }
}