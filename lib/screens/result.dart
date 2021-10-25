import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/screen_test.dart';

class Result extends StatelessWidget {
  int? bal;
 Result({Key? key,@required this.bal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   

    Widget _button(){
      return ElevatedButton(
        onPressed: (){
          
          Navigator.push(
                       context,
                        MaterialPageRoute(
                         builder: (context) => App(balll:bal ),      
                       ));
        },
         child: Text('First Page') 
         );
    }
    Widget _text(){
      return Padding(
        padding: EdgeInsets.all(25),
        child: Text('$bal', style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black)),
      );

    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Result'),
      ),    
      body: Center(
        child: Column(
          children: <Widget>[
            _text(),
            _button()
          ],
        ),
      ),
    );
  }
}