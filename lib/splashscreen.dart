import 'package:flutter/material.dart';




class spl extends StatefulWidget {
  const spl({super.key});

  @override
  State<spl> createState() => _splState();
}

class _splState extends State<spl> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => scr2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset("Logo3.png"),
      //child:logo1(size:MediaQuery.of(context).size.height),
    );
    // return SafeArea(child: 
    // Scaffold(
    //   body:Center(
    //     child: SingleChildScrollView(
    //       child:Column(
    //         children: [
    //           Container(
    //             height: double.infinity,
    //             width: double.infinity,
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Container(height: 20,
    //                 width: 20,
    //                   child:Image())
    //               ],
    //             ),
    //           )
    //         ],
    //       ) ,
    //     ),
    //   ) ,
    // ));
//     return SafeArea(
//         child: Scaffold(
//       body: Center(
//         // child: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Image.asset("logo1.jpg"),
//             // Container(
//             //   height: double.infinity,
//             //   width: double.infinity,
//             //   child: Column(
//             //     children: [Center(child: Image.asset("assets/logo.png"))],
//             //   ),
//             // )
//             // Center(

//             Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(120),
                  
//                   //padding: EdgeInsets.all(),
//                   //width: 500,
//                  // child: Image(image: AssetImage("assets/logo.png")),
//                 ),
//               ],
//             ),

//             //)
//           ],
//         ),
//         //),
//       ),
//     ));
   }
 }

