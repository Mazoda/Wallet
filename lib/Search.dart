import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 40),
        child: Column(children: [
          Row(children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .02,
            ),
            const Text(
              "Search",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ]),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 40,
                    child: TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search a Service",
                        fillColor: Color.fromARGB(255, 241, 239, 239),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 241, 239, 239)),
                  height: 40,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(Icons.filter_list_alt),
                ),
              ],

            ),
          ),Container(margin: EdgeInsets.only(top: 5),
            child: SizedBox(
              
              height: MediaQuery.of(context).size.height*.84,width: MediaQuery.of(context).size.width*.9,
              child: ListView(children: [
              Single("assets/images/Search/dollar.png","Money Tranfer Ub..."),
              SizedBox(height: 20,),
              Single("assets/images/Search/transaction.png","Transactions")
              ,SizedBox(height: 20,),
              Single("assets/images/Search/recharge.png","Mobile Recharge")
              ,SizedBox(height: 20,),
              Single("assets/images/Search/addCard.png","Add Card")
              ,SizedBox(height: 20,),
              Single("assets/images/Search/Bill.png","Elecricity Bill")
              ,SizedBox(height: 20,),
              Single("assets/images/Search/rent.png","Apartment Rent")
              ,SizedBox(height: 20,),
              Single("assets/images/Search/transportaion.png","Transport Bill")   ,SizedBox(height: 20,),
              Single("assets/images/Search/ISP.png","ISP Internet Bill")   ,SizedBox(height: 20,),
              Single("assets/images/Search/water.png","Water Bill")],),
            ),
          )
     


        ]),
      ),
    );
  }
}

class Single extends StatelessWidget {
  Single(this.imageName,this.textt);
  String imageName="";String textt="";
  @override
  Widget build(BuildContext context) {
    return Container(
   
      width: MediaQuery.of(context).size.width*.5,
      height: MediaQuery.of(context).size.height / 12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 51, 50, 50).withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0.0, 0.75) // changes position of shadow
              ),
        ],
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          width: 50,height: 50,
         child: Image.asset(imageName,)
        ),SizedBox(width: 20,),
        Text(textt  ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Spacer(),Icon(Icons.arrow_forward_ios),SizedBox(width: 15,)
      ]),
    );
  }
}
