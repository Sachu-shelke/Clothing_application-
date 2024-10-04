import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return Scaffold(
      appBar:AppBar(
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: Padding(
          padding:  EdgeInsets.only(left: 28.0),
          child: Text("Credit/Debit Card",style: TextStyle(
              fontSize: 22,fontWeight: FontWeight.w800
          ),),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  children:[
                    Container(
                    height:mediaquery.size.height*0.3 ,
                    width: mediaquery.size.width*1,
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                  ),
                    Container(
                      height:mediaquery.size.height*0.3 ,
                      width: mediaquery.size.width*1,
                      decoration: BoxDecoration(
                        // color: Colors.purple
                      ),
                      // child: Image.asset("assets/cloaths/mastercard.jpg",height: mediaquery.size.height*1, width:mediaquery.size.width*1 ,),
                    ),
                    Positioned(
                      top: 100,
                      left: 30,
                      child: Container(
                        child:Text("5757  4747  5757  4747",style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,fontWeight: FontWeight.w900
                        ),),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      left: 20,
                      child: Container(
                        child:Text("VARAT SINGH SHARAMA",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 20,color: Colors.grey
                        ),),
                      ),
                    ),
                    Positioned(
                      top: 200,
                      right: 20,
                      child: Container(
                        child: Text("07/21",style: TextStyle(
                            color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500

                        ),),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: mediaquery.size.width*0.73,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                    ),
                    Positioned(
                      top:10,
                      left: mediaquery.size.width*0.80,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(25)
                        ),
                      ),
                    ),                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Icon(Icons.camera_alt_outlined,size: 50,color: Colors.grey,)
              ],
            ),
            SizedBox(
              height:50,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("Name of card")
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: mediaquery.size.height*0.1,
                width: mediaquery.size.width*1,
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "VARAT SINGH SHARAMA",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                        borderSide:BorderSide(color: Colors.purple),
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("Card number")
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(20.0),
              child: Container(
                height: mediaquery.size.height*0.09,
                width: mediaquery.size.width*1,
                child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "4747 4747 4747 4747",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                        borderSide:BorderSide(color: Colors.purple),
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text("Expiry date",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                  ),),
                  SizedBox(width: 130,),
                  Text("CVC",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                  ),)
                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: mediaquery.size.height*0.07,
                    width: mediaquery.size.width*0.4,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "07/21",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                          borderSide:BorderSide(color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    height: mediaquery.size.height*0.07,
                    width: mediaquery.size.width*0.4,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "474",
                        suffixIcon: Icon(Icons.wallet),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                          borderSide:BorderSide(color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  height: mediaquery.size.height*0.06,
                  width: mediaquery.size.width*1,
                  decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text("USE THIS CARD",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: Colors.white),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

