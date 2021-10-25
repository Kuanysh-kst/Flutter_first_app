import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_application_6/models/models.dart';
import 'package:flutter_application_6/screens/result.dart';

void main() {
  runApp(MaterialApp(home: App(),));
}



class App extends StatefulWidget {
int? balll=0;
   App({ Key? key,@required this.balll }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Question> questions = sample_data ;
  Color button_color1=Colors.black;
  Color button_color2=Colors.green;
  int count=0;
  String word='Next';
  bool qw=true;
  bool pressGeoON = false;
  bool cmbscritta = false;
 int ball=0;
  @override
  Widget build(BuildContext context) {
    void logic(){
      
    }
    Widget _anim_button(String title,bool color){
    return ElevatedButton(
                    onPressed: (){
                       
                       setState(()
                      {
                     if(title==questions[count].ans){
                      ball++;
                      pressGeoON = true;
                      Color button_color2=Colors.green;
                      }
                       if(title!=questions[count].ans) pressGeoON = false;
                       Color button_color1=Colors.black;
                       }
                       );
                    },
                   child: Text(title,
                   style: pressGeoON ? TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.green.shade300):TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),) ,
                   
              );
  }


    Widget _Text(String worde){
      return Padding(
        padding: EdgeInsets.only(top: 30,right: 20,left: 20),
         child: Text(worde,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),
         ),
         );
    }

    Widget _button(){
      return ElevatedButton(onPressed: (){
                    setState(()
                    {
                      count++;
                      if(count==3){
                        word='Finish';
                        
                        
                      }
                      if(count==4){
                         
                       Navigator.push(
                       context,
                        MaterialPageRoute(
                         builder: (context) => Result(bal: ball),
                         
                         
                       ));
                       count=0;
                       word='Next';
                       
                      }
                    }
                    );
                    
                    
                  }, 
                  child: Text(word)
                  );
    }

    return Scaffold(
      appBar: AppBar(
        title:Text('SOME') ,
        ),
        body: Center(
          child:Column(
            children: <Widget>[
              _Text(questions[count].question!),
              SizedBox(height: 170,),
              _anim_button(questions[count].options![0],pressGeoON),
              SizedBox(height: 20,),
              _anim_button(questions[count].options![1],pressGeoON),
              SizedBox(height: 20,),
              _anim_button(questions[count].options![2],pressGeoON),
              SizedBox(height: 20,),
              _anim_button(questions[count].options![3],pressGeoON),
              SizedBox(height: 50,),

              Row(
                children: <Widget>[
                  SizedBox(width: 300,),
                  _button()
                ],
              )
            ],
          ) ,),
    );
  }
}