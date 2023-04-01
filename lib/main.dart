// ignore_for_file: prefer_const_constructors, duplicate_ignore, camel_case_types, use_key_in_widget_constructors, unused_import, must_be_immutable, non_constant_identifier_names

// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/users.dart';





// ignore: prefer_const_constructors


// ignore: camel_case_types
class Welcome_Screen extends StatelessWidget {
   final fileImages = [
    "logo.png", //идея для названия кста:gengogame (мне пофиг хотите используйте хотите нет)
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        
        appBar:AppBar(
        // ignore: prefer_const_constructors
        title:Text('game'), //gengogame
        centerTitle:true),
        
        body: Center(

          child: Container(
          height: 500,
          width: 400,
          alignment: Alignment.center,
          child:
          Column(
          children:<Widget> ///////child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:<Widget>[Image.asset('images/logo.png')],
          [
          Container(
          height: 250,
          width: 150,
          alignment: Alignment.topCenter,
          child:Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:<Widget>[Image.asset('images/logo.png')])),
          // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
          Container( //<- контейнер с двумя кнопками
          height: 150,
          width: 180,
          alignment: Alignment.center,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>
          [
          TextButton(
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25),foregroundColor: Colors.grey),
          onPressed: () {
             // ignore: avoid_print
             Navigator.pushNamed(context, '/log_screen');
          },
          child:  Container(
            height: 35,
            width: 180,
            alignment: Alignment.center,
            child: Text("Вход"),
          ),
        ),
        TextButton(
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25),foregroundColor: Colors.grey),
          onPressed: () {
             Navigator.pushNamed(context, '/reg');

          },
          child:  Container(
            height: 35,
            width: 180,
            alignment: Alignment.center,
            child: Text("Регистрация"),
            
          ),
         )
          ]
          )
          ),
        ], //ctmain2
       ),
      )
  
    )
    )
    );
  }
}

class Reg_Screen extends StatelessWidget{
        User user_n = User("","","");



  @override

  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Регистрация')),

      body: Center(
        child: Container( 
          height: 275,
          width: 365,
          alignment: Alignment.center,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children:<Widget>[
        TextField
        (decoration: InputDecoration(
          border: OutlineInputBorder(),hintText: "Никнейм",
          helperText: "Ваше отображаемое имя"),maxLength: 45,
            onChanged: (String value) {
            // ignore: unused_local_variable, non_constant_identifier_names
            String user_nick;
            user_nick = value;
            user_n.nickname = user_nick;
          },
        ),
        TextField
        (decoration: InputDecoration(
          border: OutlineInputBorder(),hintText: "Логин",
          helperText: "Логин используется для входа в систему"),
          maxLength: 45,
          onChanged: (String value) {
            // ignore: non_constant_identifier_names
            String user_login;
            user_login = value;
            user_n.login = user_login;
          },
        ),
         TextField
        (decoration: InputDecoration(
          border: OutlineInputBorder(),hintText: "Пароль",
          helperText: "Придумайте надёжный пароль"),maxLength: 45,
          obscureText: true,
          onChanged: (String value) {
            // ignore: non_constant_identifier_names
            String user_pass;
            user_pass = value;
            user_n.pass = user_pass;
          }
        ),
        

         Container(
            height: 35,
            width: 180,
            alignment: Alignment.bottomCenter,
        child: TextButton( //почему то при тесте какуюто дич выдаёт но кнопка работает
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25),foregroundColor: Colors.grey),
          onPressed: () {
             Navigator.pushNamed(context, '/');            
          },
          child:  Container(
            height: 35,
            width: 180,
            alignment: Alignment.center,
            child: Text("Продолжить"),
          )
        )



          )
         ]

        ),
       )
      )
    );

  }
}

class Login_Screen extends StatelessWidget{


  
  late String _pass;
  late String _login;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom !=0;
    // ignore: unused_label
    resizeToAvoidBottomInset:false;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Вход')),

      body: Center(
        child: Container( //<- контейнер с двумя кнопками
          height: 250,
          width: 365,
          alignment: Alignment.center,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children:<Widget>[
          
        TextField
        (decoration: InputDecoration(
          border: OutlineInputBorder(),hintText: "Логин",
          helperText: "Логин"),maxLength: 45,
          onChanged: (String value) {
            // ignore: non_constant_identifier_names
            _login = value;
          }
        ),
        TextField
        (decoration: InputDecoration(
          border: OutlineInputBorder(),hintText: "Пароль",
          helperText: "Пароль",),maxLength: 45,
          obscureText: true,
          onChanged: (String value) {
            // ignore: non_constant_identifier_names
            _pass = value;
          }
          
        ),

        

         Container(
            height: 35,
            width: 180,
            alignment: Alignment.center,color: Colors.white,
        child: TextButton( 
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25),foregroundColor: Colors.grey),
          onPressed: () 
          {
            if((_pass == "1111")&(_login=="user")) {
            Navigator.pushNamed(context, '/'); 
         }
         else{
          Future simpleDialog(BuildContext context) { ///в хромтесте окна не было я хз будет ли окно вылетать ваще
          return showDialog(
          context: context,
          builder: (BuildContext context) {
          return AlertDialog(
          title: Text('Ошибка'),
          content: Text('Неправильный логин или пароль'), 
          actions: <Widget>[
          TextButton(
          child: Text('Ок'),
          onPressed: () {
          Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
 }
          },
          child:  Container(
            height: 35,
            width: 180,
            alignment: Alignment.center,
            
            child: Text("Продолжить"),
            
          )
        )
          )
         ]
        ),
       )
      )
    );
  }
  
 
}
void main() {

  runApp(MaterialApp(

    initialRoute: '/',

    routes: {

      '/':(BuildContext context) => Welcome_Screen(),

      '/reg':(BuildContext context) => Reg_Screen(),

      '/log_screen':(BuildContext context) => Login_Screen(),

    }

  ));

}