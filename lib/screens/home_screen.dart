import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/product._card.dart';

class HomeScreen extends StatelessWidget {
  List catlist = [
    "All",
    "Best Selling",
    "Jackets",
    "Shirts",
    "Pants",
    "Bags",
  ];

  List imgList = [
    "Warm Jacket",
    'Black T-Shirt',
    'Black Pant',
    'Ladies Bag',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20,left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Padding(padding: EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8Fa),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text("Find your produt"),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                        size:30,
                        color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8Fa),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.notifications_none,
                    size: 30,
                    color: Colors.grey,
                    ),
                  ),
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(right: 25,top: 20),
                alignment: Alignment.center,
                child: Image.asset(
                  "images/cover.jpg",
                width: MediaQuery.of(context).size.width / 1.2,
                fit: BoxFit.contain,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(children: [
                    for(int i=0; i<catlist.length; i++)
                    Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                    decoration: BoxDecoration(
                      color: catlist[i]=="All"
                      ? Color(0xFFFD725A)
                      : Color(0xFFF7F8FA),
                      borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        catlist[i],
                      style: TextStyle(
                        fontSize: 16,
                        color: catlist[i]=="All"
                      ? Colors.white
                      :  Colors.grey,
                      ),
                      ), 
                    ),
                  ],),
                ),
                
               ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.width - 30 -15) / (2 * 290),
                  mainAxisSpacing: 45,
                  crossAxisSpacing: 15,
                 ),
                 itemCount: imgList.length,
                 itemBuilder: (_,i){
                  if(i%2==0){
                    return  ProductCard(imgList[i]);
                  }
                  return OverflowBox(
                    maxHeight: 290.0 + 70.0,
                    child: Container(
                      margin: EdgeInsets.only(top: 70),
                      child: ProductCard(imgList[i]),
                    )
                  );
                 }
               ),
            ],),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.white,
        iconSize:30,
        selectedItemColor:Color(0xFFFDD725A),
        currentIndex: 0,
        onTap: (index){},
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:''),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),label:''),
          BottomNavigationBarItem(icon:Icon(Icons.favorite),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color(0xFFFD725A),
        child: Icon(Icons.camera),
        onPressed: () {}
        ),
        floatingActionButtonLocation: 
        FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
