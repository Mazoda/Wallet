import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Transactions extends StatelessWidget {
  String image = "", up1 = "", down1 = "", down2 = "";
  int up2 = 0;
  Transactions(this.image, this.up1, this.down1, this.up2, this.down2);

  dynamic RedOrGreen(up2) {
    if (up2 >= 0) {
      return Colors.green;
    } else
      return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: 80,
      width: MediaQuery.of(context).size.width - 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 51, 50, 50).withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0.0, 0.75) // changes position of shadow
              ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            Container(
              margin:const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    up1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          down1,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      )),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$" + up2.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: RedOrGreen(up2)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  down2,
                  style:const TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

class FullTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin:const EdgeInsets.only(top: 40, left: 10),
          child: Column(children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const Text(
                  "Transactions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 61, 138, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 23, vertical: 5),
                    child: const Text("All",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20)),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromARGB(255, 46, 42, 42).withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              Offset(0.0, 0.75) // changes position of shadow
                          ),
                    ],
                  ),
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/recieve.png",
                          height: 24,
                          width: 24,
                        ),
                        const Text("Recieved",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Color.fromARGB(255, 46, 42, 42).withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              Offset(0.0, 0.75) // changes position of shadow
                          ),
                    ],
                  ),
                  padding: EdgeInsets.only(left: 5),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/spend.png",
                          height: 24,
                          width: 24,
                        ),
                        const Text("Spend",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 5),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 145,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [ const  Padding(
                    padding: EdgeInsets.only(left: 10,top: 10),child: Align( alignment: Alignment.centerLeft,child:  Text(
                        "TODAY",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 173, 171, 171)),
                      ),),
                    
                   ),
                    GestureDetector(
                      onDoubleTap: _launchUrl,
                      child: Transactions("assets/images/Facebook.png",
                          "Facebook", "Salary", 6000, "12:46pm"),
                    ),
                    Transactions("assets/images/Jawwal.png", "Jawwal", "Salary",
                        -700, "12:00pm"),
                    Transactions("assets/images/spotify.png", "Spotify",
                        "ُEntertain", 100, "5:30pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                 
                    Transactions("assets/images/Jawwal.png", "Jawwal", "Salary",
                        1234, "12:00pm"),const  Padding(
                    padding: EdgeInsets.only(left: 10,top: 10),child: Align( alignment: Alignment.centerLeft,child:  Text(
                        "Yesterday",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 173, 171, 171)),
                      ),),
                    
                   ),
                    GestureDetector(
                      onDoubleTap: _launchUrl,
                      child: Transactions("assets/images/Facebook.png",
                          "Facebook", "Salary", -1234, "12:46pm"),
                    ),
                    Transactions("assets/images/spotify.png", "Spotify",
                        "ُEntertain", 10, "5:30pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                    GestureDetector(
                      onDoubleTap: _launchUrl,
                      child: Transactions("assets/images/Facebook.png",
                          "Facebook", "Salary", 3643, "12:00m"),
                    ),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                  ]),
                ),
              ),
            ),
          ])),
    );
  }
}

void _launchUrl() async {
  // final Uri _url = Uri.parse('   "whatsapp://send?phone=972592189159&text=${Uri.encodeFull('message')}"');
  String url =
      "whatsapp://send?phone=972592189159&text=${Uri.encodeFull('message')}";
  launch(url);
}
