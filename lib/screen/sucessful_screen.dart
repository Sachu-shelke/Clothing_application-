import 'package:flutter/material.dart';
class SucessfulScreen extends StatefulWidget {
  const SucessfulScreen({super.key});

  @override
  State<SucessfulScreen> createState() => _SucessfulScreenState();
}

class _SucessfulScreenState extends State<SucessfulScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaquery =MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,size: 30,),
      ),
      body:SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: mediaquery.size.height*0.4,
              width: mediaquery.size.width*1,
              decoration: BoxDecoration(
              ),
              child: Image.asset("assets/images/img_6.png",fit: BoxFit.fill,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text("Congrats! Your Order has",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  ),),

                ),
                Text("been Placed",style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.w900
                ),)
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text("Your items has been placed and is on",style: TextStyle(
                      fontSize: 17
                  ),),
                )
              ],
            ),
            Column(
              children: [
                Text("it's way to being processed",style: TextStyle(
                    fontSize: 17
                ),)
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: mediaquery.size.height*0.07,
                  width: mediaquery.size.width*1,
                  decoration: BoxDecoration(
                      color: Colors.purple,borderRadius: BorderRadius.circular(20)
                  ),
                  child: ListTile(
                    leading:Icon(Icons.local_shipping_outlined,size: 30,color: Colors.white,) ,
                    title: Center(
                      child: Text("TRACK ORDER",style: TextStyle(
                          color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(),));
              },
              child: Row(
                children: [
                  Container(
                    height: mediaquery.size.height*0.07,
                    width: mediaquery.size.width*1,
                    decoration: BoxDecoration(
                        color: Colors.purple,borderRadius: BorderRadius.circular(20)
                    ),
                    child: ListTile(
                      title: Center(
                        child: Text("CONTINUE SHOPPING",style: TextStyle(
                            color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ClothDemo(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      Text("Back to home",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),)
                    ],
                  ),
                )
              ],
            )


          ],
        ),
      ) ,
    );
  }
}
