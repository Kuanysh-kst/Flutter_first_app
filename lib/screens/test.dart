import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_application_6/models/favorites.dart';



class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}
String Tasks='How many money?';
class _TestState extends State<Test> {


  
  @override
  Widget _anim_button(){
    return AnimatedButton(
                width: 200,
                text: 'Yes',
                selectedTextColor: Colors.blue.shade600,
                transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
                textStyle: TextStyle(
                    fontSize: 28,
                    letterSpacing: 5,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
                    onPress: (){},
              );
  }
  

  Widget build(BuildContext context) {
    Widget _text(String task){
    return Padding(
      padding:EdgeInsets.only(top: 20,left: 10,right: 10),
      child: Container(     
        child:Text(task,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),) 
        ,),
         );
    }
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Test №') ,
      ),
      body: 
      Center(
      child: Column(
        children: <Widget>[
        _text(Tasks),
          SizedBox(
                height: 175.0,
              ),
         _anim_button(),
          SizedBox(
                height: 25.0,
              ),
         _anim_button(),
          SizedBox(
                height: 25.0,
              ),
         _anim_button()
          
        ],
        
      ),
      )
      
    );
  }
}