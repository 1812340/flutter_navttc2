import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     bool isClick = false;
//     return Scaffold(
//         appBar: AppBar(
//           leading: InkWell(onTap: () {}, child: Icon(Icons.arrow_back)),
//           title: Text("Maju"),
//           centerTitle: true,
//           actions: [
//             SizedBox(
//                 width: screenWidth * 0.2, child: Icon(Icons.notification_add)),
//           ],
//         ),
//         body: Container(
//           color: Colors.red,
//           width: screenWidth,
//           height: screenHeight,
//           child: Column(
//             // crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text("heelloo"),
//               Container(
//                 height: screenHeight * 0.4,
//                 color: Colors.black,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         isClick = true;
//                         print("this is bool value ${isClick}");
//                       },
//                       child: CircleAvatar(
//                         radius: 70,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               // borderRadius: BorderRadius.circular(15),
//                               color: Colors.blue),
//                           child: Text("heloooasf"),
//                         ),
//                       ),
//                     ),

//                     // (isClick == true)? Text("OKEY" ,style: TextStyle(
//                     //   color: Colors.red
//                     // ),) : Text("No data flound",style: TextStyle(
//                     //   color: Colors.red
//                     // )),

//                     Visibility(
//                       visible: isClick,
//                       child: CircleAvatar(
//                         radius: 70,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(15),
//                               color: Colors.blue),
//                           child: Text("heloooasf"),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Text("heelloo"),
//             ],
//           ),
//         ));
//   }
// }



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

    bool isClick = false;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print("up bool ${isClick}");
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: () {}, child: Icon(Icons.arrow_back)),
          title: Text("Maju"),
          centerTitle: true,
          actions: [
            SizedBox(
                width: screenWidth * 0.2, child: Icon(Icons.notification_add)),
          ],
        ),
        body: Container(
          color: Colors.red,
          width: screenWidth,
          height: screenHeight,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("heelloo"),
              Container(
                height: screenHeight * 0.4,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            isClick = !isClick;
                          },
                        );
                        // isClick = true;
                        print("this is bool value ${isClick}");
                      },
                      child: CircleAvatar(
                        radius: 70,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue),
                          child: Text("heloooasf"),
                        ),
                      ),
                    ),
                    (isClick == true)? Text("OKEY" ,style: TextStyle(
                      color: Colors.red
                    ),) : Text("No data flound",style: TextStyle(
                      color: Colors.red
                    )),
                    Visibility(
                      visible: isClick,
                      child: CircleAvatar(
                        radius: 70,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue),
                          child: Text("heloooasf"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("heelloo"),
            ],
          ),
        ));
  }
}
