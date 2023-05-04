  import 'package:flutter/material.dart';
import 'package:split_bil/split_page1.dart';

class SplitBill extends StatefulWidget {
   const SplitBill({Key? key}) : super(key: key);

   @override
   State<SplitBill> createState() => _SplitBillState();
 }

 class _SplitBillState extends State<SplitBill> {
  TextStyle Texstyle=TextStyle(
      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20);


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Result",style: TextStyle(
                 color: Colors.black,fontSize: 80,fontWeight: FontWeight.bold),),
           ),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: MediaQuery.of(context).size.height/7,
               color: Colors.amberAccent,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [

                         Column(
                           children: [
                             Text(("Equally Divided"),style: Texstyle),
                             Text(('\$'),style: Texstyle),
                           ],
                         ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(("Friends"),style: Texstyle),
                             Text(('Tax'),style: Texstyle),
                             Text(('Tip'),style: Texstyle),
                           ],
                         ),
                         Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(("8"),style: Texstyle),
                             Text(("%"),style: Texstyle),
                             Text(("%"),style: Texstyle),
                           ],
                         ),
                       ],
                     ),
                   ],
                 ),
               ),

             ),
           ),
           Center(child: Text(("Everybody should pay 35.6"),style: Texstyle)),
           SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               color: Colors.amberAccent,
               height: 40,
               width: MediaQuery.of(context).size.width/1,
               child: ElevatedButton(onPressed:(){
                 Navigator.pop(context,MaterialPageRoute(builder:(context) => SplitApp()));
               },
                 style: ElevatedButton.styleFrom(
                   primary: Colors.orangeAccent,

                 ),
                   child: Text("Calculate Again?",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),



     ),
     ),
           ),
     ],
       ),

     );
   }
 }

