import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

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
          TextField(),
          TextField(
            obscureText: statusPassword,
            decoration: InputDecoration(
              labelText: 'Password',
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
          ElevatedButton(
            onPressed: gantiWarna,
            child: const Text('ganti warna'),
          
            )
        ],
      ),
    );
  }
}