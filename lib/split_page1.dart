import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_bil/page2.dart';

class SplitApp extends StatefulWidget {
   const SplitApp({Key? key}) : super(key: key);

   @override
   State<SplitApp> createState() => _SplitAppState();
 }

 class _SplitAppState extends State<SplitApp> {
  TextEditingController tax=TextEditingController();
  String tax1='';
  int tip=0;
  TextStyle styles=TextStyle(color: Colors.black,
      fontSize: 30, fontWeight: FontWeight.bold,);
   int slidervalue = 1;
   TextStyle text=GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold);
   @override
   Widget build(BuildContext context) {
     return Scaffold(appBar: AppBar(
       backgroundColor: Colors.white,
       title: Text("SPLIT BILL", style:styles),

       elevation: 5,
     ),
       body: Padding(
         padding: const EdgeInsets.all(15.0),
         child: ListView(
           children: [
             Container(
                 color: Colors.amberAccent,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Total", style:styles),

                               Text("amt", style:styles),

                             ],
                           ),
                           Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Friends", style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                               Text("Tax", style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                               Text("Tip", style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                             ],
                           ),

                           Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(slidervalue.toString(), style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                               Text(tax1.toString(), style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                               Text(tip.toString(), style:
                               TextStyle(color: Colors.black,
                                   fontSize: 30, fontWeight: FontWeight.bold),),
                             ],
                           ),

                         ],
                       ),


                     ],
                   ),
                 )


             ),
             SizedBox(height: 20,),
             Center(
               child: Text("How Many Friends ?",
                 style: TextStyle(color: Colors.black, fontSize: 30,
                     fontWeight: FontWeight.bold),),
             ),
             SliderTheme(
               data: SliderThemeData(

                   trackHeight: 5,
                   thumbShape: RoundSliderThumbShape(
                     enabledThumbRadius: 15,
                   )

               ),
               child: Slider(
                 divisions: 100,
                 activeColor: Colors.amberAccent,
                 inactiveColor: Colors.black,
                 thumbColor: Colors.amberAccent,

                 value: slidervalue.toDouble(),
                 min: 1,
                 max: 100,
                 // divisions: 100,
                 label: slidervalue.round().toString(),
                 onChanged: (double value) {
                   setState(() {
                     slidervalue = value.round();
                   });
                 },
               ),
             ),
             Row(
               children: [
                 Expanded(
                   flex: 2,
                   child: Container(
                     height: 100,

                     decoration: BoxDecoration(
                       color: Colors.yellow,
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [


                         FloatingActionButton(backgroundColor: Colors.grey,

                             onPressed: () {
                           setState(() {
                             tip--;
                           });

                             },

                             child: Icon(
                               FontAwesomeIcons.minus, color: Colors.white,)),

                         Column(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Tip", style:
                             TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 20, color: Colors.black,fontFamily: 'openSans',),),
                             Text(tip.toString(), style:
                             TextStyle(fontWeight: FontWeight.bold,fontFamily: 'openSans',
                                 fontSize: 20, color: Colors.black),),
                           ],
                         ),

                         FloatingActionButton(onPressed: () {
                           setState(() {
                             tip++;
                           });
                         },
                           backgroundColor: Colors.grey,
                           child: Icon(FontAwesomeIcons.plus),
                         ),

                       ],
                     ),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Expanded(
                   flex: 1,
                   child: Container(
                     height: 100,


                     decoration: BoxDecoration(
                       color: Colors.yellow,
                       borderRadius: BorderRadius.circular(10),
                     ),

                     child: Padding(
                       padding: const EdgeInsets.all(25.0),
                       child: TextField(

                         keyboardType: TextInputType.number,
                         controller: tax,
                         onChanged: (value){
                           setState(() {
                            tax1=value;
                           });
                         },

                         decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(15),
                             borderSide: BorderSide(
                                 width: 3, color: Colors.grey),
                           ),
                           labelText: 'Tax in %',

                         ),

                       ),
                     ),
                   ),
                 ),


               ],
             ),
             SizedBox(height: 20,),


             Row(
               children: [
                 outlinedbutton("1"),
                 outlinedbutton("2"),
                 outlinedbutton("3"),
               ],
             ),
             Row(
               children: [
                 outlinedbutton("4"),
                 outlinedbutton("5"),
                 outlinedbutton("6"),
               ],
             ),
             Row(
               children: [
                 outlinedbutton("7"),
                 outlinedbutton("8"),
                 outlinedbutton("9"),
               ],
             ),

             Row(
               children: [
                 outlinedbutton("."),
                 outlinedbutton("0"),
                 outlinedbutton("CLR"),
               ],
             ),
          Container(

               width: 400,
               height: 60,
               child: ElevatedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute
                   (builder: (context)=>SplitBill()));
               },
                   style: ElevatedButton.styleFrom(
                     primary: Colors.green,

                   ),
                   child: Text("SPLIT BILL",
     style: TextStyle(fontSize: 20,
     fontWeight: FontWeight.bold

     ),)
               ),
             ),

           ],
         ),
       ),


     );
   }


   outlinedbutton(String name){

   return Expanded(
     child: Container(
     height: 70,
     width: MediaQuery.of(context).size.width/3,
     child: OutlinedButton(onPressed: (){},
     style: OutlinedButton.styleFrom(


     primary: Colors.black,
     ),


     child: Text(name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
     ),
   );
   }

  late double result;
   late double total;
   // void displaytotal(String text){
   //   setState(() {
   //     if(text=='1'||text=='2'||text=='3'||text=='4'||
   //         text=='5'||text=='6'||text=='7'||text=='8'||text=='9'||
   //         text=='.'||text=='0'){
   //       total=int.parse(text).toString();
   //     }

   //
   //   });
   // }

   }



