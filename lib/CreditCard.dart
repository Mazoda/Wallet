import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  String number = "", name = "";
  CreditCard(this.name, this.number);
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*.2,),
      //  width: (MediaQuery.of(context).size.width),
      //  height: MediaQuery.of(context).size.height /3.5,
      child: Stack(
        children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/credit-removebg-preview.png",fit: BoxFit.cover,
            width: (MediaQuery.of(context).size.width),
        
          ),
        ),
        Positioned(
          child: Text(
            number,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
          ),
          top: 80,
          left: MediaQuery.of(context).size.width / 2.9,
        ),
        Positioned(
          child: Text("HOLDER: ",style: TextStyle(color: Colors.white),),
          top: 150,
          left: MediaQuery.of(context).size.width / 5.1,
        ),
        Positioned(
          child: Text(
          name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
          ),
          top: 150,
          left: MediaQuery.of(context).size.width / 2.9,
        )
      ]),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
           padding:const EdgeInsets.only(top: 40, left: 10),
          child: Column(
      children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              const Text(
                "My Cards",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),Spacer(),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(context, 
                //    MaterialPageRoute(builder: (context) => AddCard()),
                //   );
                // },
                child: Container(
                  
                  child: Row(children:const [
                    Icon(Icons.add_circle_outline),SizedBox(width: 10,),Text("Add Card",style: TextStyle(color: Colors.blue),),SizedBox(width: 10,)
                  ]),
                ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 90,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                      CreditCard(
                          "ODAY M. ABUMETTLEQ",
                          "1234 5678 9876 5432",
                          ),
                        CreditCard(
                          "YUSUF N. MOSABEH",
                          "1234 5678 9123 5919",
                        ),CreditCard(
                          "ODAY M. ABUMETTLEQ",
                          "1234 5678 9876 5432",
                          ),CreditCard(
                          "ODAY M. ABUMETTLEQ",
                          "1234 5678 9876 5432",
                          ),],
                )),
          )
      ],
    ),
        ));
  }
}
