import 'package:firstproject/Search.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CreditCard.dart';
import 'Services.dart';
import 'Transactions.dart';
import 'HomePage.dart';
import 'main.dart';
import 'Search.dart';

class HomePageState extends State<HomePage> {
  bool isDark = false;
  Function? func;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DoWallet"),centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 121, 75),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Oday Mutlak"),
              decoration: BoxDecoration(color: Color.fromARGB(255, 72, 121, 75)),
              accountEmail: Text("oabumutlak@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pfp.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              subtitle: Text("Go to home"),
              title: Text("Home"),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              subtitle: Text("Go to Search"),
              title: Text("Search"),
            ),
            ListTile(
              leading: const Icon(Icons.miscellaneous_services_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: const Text("Go to Services"),
              title: const Text("Services"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Services()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.transform),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FullTransaction()),
                );
              },
              subtitle: Text("All Transactions"),
              title: Text("Transactions"),
            ),   ListTile(
              leading: const Icon(Icons.credit_card),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCard()),
                );
              },
              subtitle: Text("All Cards"),
              title: Text("My Cards"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 212, 159, 90),
                    ),
                    alignment: Alignment.center,
                    width: 60,
                    height: 60,
                    child: Container(
                      width: 50, height: 50,
                      // child: Image.asset("assets/images/pfp.jpg",width: 50,height: 50,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/pfp.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "My Wallet",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                    child: const Icon(Icons.search),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.language),
                  const SizedBox(width: 10),
                  const Icon(Icons.more_vert)
                ],
              ),
              GestureDetector(
                onLongPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCard()),
                  );
                },
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width),
                  height: MediaQuery.of(context).size.height / 3.55,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CreditCard(
                          "ODAY M. ABUMETTLEQ",
                          "1234 5678 9876 5432",
                        ),
                        CreditCard(
                          "YUSUF N. MOSABEH",
                          "1234 5678 9123 5919",
                        ), CreditCard(
                          "Mamoon AbuSalah",
                          "8473 3849 3884 2993",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Text("Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Services()),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 41,
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCard()),
                  );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 218, 215, 252),
                      ),
                      width: MediaQuery.of(context).size.width / 4.56,
                      height: MediaQuery.of(context).size.width / 4.56,
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
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 195, 224, 207),
                    ),
                    width: MediaQuery.of(context).size.width / 4.56,
                    height: MediaQuery.of(context).size.width / 4.56,
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
                    width: MediaQuery.of(context).size.width / 4.56,
                    height: MediaQuery.of(context).size.width / 4.56,
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
                    width: MediaQuery.of(context).size.width / 4.56,
                    height: MediaQuery.of(context).size.width / 4.56,
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
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    const Text("Transaction",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullTransaction()),
                        );
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: Colors.blue.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    GestureDetector(
                      onDoubleTap: _launchUrl,
                      child: Transactions("assets/images/Facebook.png",
                          "Facebook", "Salary", 6000, "12:46pm"),
                    ),
                    Transactions("assets/images/Jawwal.png", "Jawwal", "Salary",
                        -700, "12:00pm"),
                    Transactions("assets/images/spotify.png", "Spotify",
                        "Salary", 100, "5:30pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                    Transactions("assets/images/Jawwal.png", "Jawwal", "Salary",
                        1234, "12:00pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchUrl() async {
    // final Uri _url = Uri.parse('   "whatsapp://send?phone=972592189159&text=${Uri.encodeFull('message')}"');
    String url =
        "whatsapp://send?phone=972592189159&text=${Uri.encodeFull('message')}";
    launch(url);
  }
}
