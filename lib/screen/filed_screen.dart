import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FiledScreen extends StatefulWidget {
  const FiledScreen({super.key});

  @override
  State<FiledScreen> createState() => _FiledScreenState();
}

class _FiledScreenState extends State<FiledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 40.0,left: 20),
            child: Row(
              children: [
                Icon(Icons.arrow_back,size: 30,)
              ],
            ),
          ),
          SizedBox(height: 200,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent
                ),
                child: Center(child: Text("!",style: TextStyle(fontSize: 50,color: Colors.orange),)),
              )
            ],
          ),
          SizedBox(height: 50,),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Oh snap! Order Failed ",style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.w900
                ),),
              )
            ],
          ),SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Looks like something went wrong ")
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("while Processing your request.")
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column( crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple
                ),
                child: Center(child: Text("PLASE TRY AGAIN",style: TextStyle(
                    color:Colors.white,fontSize: 16,fontWeight: FontWeight.w600
                ),)),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back,size: 30,),
              Text("Back to home",style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          )
        ],
      ),
    );  }
}
