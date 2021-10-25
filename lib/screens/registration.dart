import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';


class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({ Key? key }) : super(key: key);

  @override
  _AuthorizationPageState createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  String _email='';
  String _password='';
  bool showLogin=true;

 
 
  @override
  Widget build(BuildContext context) {
    Widget _logo(){
      return Padding(
        padding:EdgeInsets.only(top: 100),
        child: Container(
          child: Align(
            child:Text('TEST',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),
            )
            )
          ,), 
          );
    }
    Widget _button(String text,void func()){
      return RaisedButton(
        onPressed:(){
          Navigator.pushNamed(
            context,
            '/screen_test'
          );
          func();
        } ,
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Theme.of(context).primaryColor,
        color: Colors.white,
        child: Text(
          text,
        style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor,fontSize: 20)
        ),
        );
    }

    Widget _input(Icon icon,String hint,TextEditingController controller, bool obscure){
      return Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style:TextStyle(fontSize: 20,color: Colors.white) ,
          decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white30),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 3)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 1)
            ),
            prefixIcon: Padding(
              padding:EdgeInsets.only(left: 10,right: 10),
              child: IconTheme(
                data: IconThemeData(color: Colors.white) ,
                child: icon,)
               ,)
          ),
          ),
      );
    }

    Widget _form(String label,void func()){
  return Container(
    child: Column(
      children:<Widget> [
        Padding(
          padding: EdgeInsets.only(bottom: 20,top: 10),
          child:_input(Icon(Icons.note_alt_sharp),'NAME',_emailController,false), ),
           
          SizedBox(height: 20,),
          Padding(
            padding:EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: _button(label,func),),
              
               )
      ],),
  );
    }

void _buttonAction(){
  _email=_emailController.text;
  _password=_passwordController.text;
  _emailController.clear();
  _passwordController.clear();
}

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          _logo(),
          (
            showLogin
            ? Column(
              children: <Widget>[
              _form('LOGIN', _buttonAction),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Text('Not registered yet? Register!',style: TextStyle(fontSize: 20,color: Colors.white),),
                  onTap:(){
                 setState((){
                   showLogin=false;
                   }); 
                  } 
                  ),
              )
              ],
            )
            :
             Column(
              children: <Widget>[
              _form('REGISTER', _buttonAction),
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: Text('Already registered ? Login!',style: TextStyle(fontSize: 20,color: Colors.white),),
                  onTap:(){
                 setState((){
                   showLogin=true;
                   }); 
                  } 
                  ),
              )
              ],
            )
          ),
          
        ],
      ),
    );
  }
}