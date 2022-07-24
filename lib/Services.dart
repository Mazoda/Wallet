import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
// Route createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Services(),  transitionDuration: Duration (seconds : 1),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;
    
//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     }
//   );
// }
class Services extends StatelessWidget {
  // const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          children: [
            Row(
              children: [
               Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back_ios_new))
                  
                      ],
                    ),
                  ),
                ),  const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                )), ],
        ),
            const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Most Used",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 218, 215, 252),
                    ),
                    width: 80,
                    height: 80,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.credit_card),
                      ),
                      const Positioned(
                        child: Text("Card",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 27,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 195, 224, 207),
                    ),
                    width: 80,
                    height: 80,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.currency_exchange),
                      ),
                      const Positioned(
                        child: Text("transfer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 16,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 250, 220, 230),
                    ),
                    width: 80,
                    height: 80,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.check_box_outline_blank),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                        child: Icon(Icons.check_box_outline_blank),
                      ),
                      const Positioned(
                        child: Text("Voucher",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 16,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 205, 159),
                    ),
                    width: 80,
                    height: 80,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.receipt),
                      ),
                      const Positioned(
                        child: Text("Pay Bill",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 19,
                      )
                    ]),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("All Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      AllServices("recive", Icons.monetization_on),const SizedBox(width: 10,),
                        AllServices("Top up", Icons.monetization_on),const SizedBox(width: 10,),
                          AllServices("Find ATM", Icons.monetization_on),const SizedBox(width: 10,),

                    ],
                  ),SizedBox(height: 30,),
                   Row(
                    children: [
                      AllServices("Bank AC", Icons.monetization_on),const SizedBox(width: 10,),
                        AllServices("Status", Icons.monetization_on),const SizedBox(width: 10,),
                          AllServices("transfeer", Icons.currency_exchange),const SizedBox(width: 10,),
                    ],
                  ),SizedBox(height: 30,),
                   Row(
                    children: [
                      AllServices("Cards", Icons.monetization_on),const SizedBox(width: 10,),
                        AllServices("PayBill", Icons.monetization_on),const SizedBox(width: 10,),
                          AllServices("Payment", Icons.monetization_on),const SizedBox(width: 10,),
                    ],
                  ),const SizedBox(height: 30,),
                   Row(
                    children: [
                      AllServices("Transaction", Icons.monetization_on),const SizedBox(width: 10,),
                        AllServices("Withdraw", Icons.monetization_on),const SizedBox(width: 10,),
                          AllServices("Voucher", Icons.monetization_on),const SizedBox(width: 10,),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AllServices extends StatelessWidget {
  String service = "";
  dynamic icon = Icons.credit_card;
  AllServices(this.service, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/3.5,
      height:  MediaQuery.of(context).size.height/8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 51, 50, 50).withOpacity(0.13),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0.0, 0.75) // changes position of shadow
              ),
        ],
      ),
      child: Column(children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25,left: 37),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Icon(icon),
                  )),SizedBox(height: 10,),
              Text(
                service,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
