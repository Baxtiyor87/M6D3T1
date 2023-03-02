import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(

        children: [
          const SizedBox(height: 10,),
          Container(

            padding: const EdgeInsets.all(90),
            decoration:  const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/One.jpeg'),
                )
            ),
          ),
          const SizedBox(height: 5,),
          const Text("Welcome back!", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          const SizedBox(height: 8,),
          const Text("Log in to your existent account of Q Allure", style: TextStyle(fontSize: 15,color: Colors.grey)),

          //=================Email================
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.1),
                spreadRadius: 7,
                blurRadius: 9,
                offset: const Offset(0, 3))
              ]
            ),
            child: TextField(


              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              autofocus: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  // icon: Icon(Icons.account_box_outlined),
                  prefixIcon: const Icon(Icons.account_circle_outlined),

                  labelText: 'Email',
                  labelStyle: const TextStyle(color: Colors.grey,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                 enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                 )

              ),
            ),
          ),
          //=================Password================
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 7,
                      blurRadius: 9,
                      offset: const Offset(0, 3))
                ]
            ),

            child: TextField(
              obscureText: !_showPassword,
              cursorColor: Colors.red,
              style: const TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye, color: _showPassword ? Colors.blue: Colors.grey,),
                    onPressed: (){
                        setState(() => _showPassword = !_showPassword);
                    },
                  ),
                  labelStyle: const TextStyle(color: Colors.grey),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )

              ),
            ),
          ),
        ],
      ),
    );
  }
}
