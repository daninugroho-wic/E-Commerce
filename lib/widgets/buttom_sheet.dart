import 'package:apk_ecommerc/screens/cart_screen.dart';
import 'package:apk_ecommerc/screens/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  List Sizes = [
        'S',
        'M',
        'L',
        'XL',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 221, 221),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Size:",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 30),
                for (int i = 0; i < Sizes.length; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(30),                  
                    ),
                child: Text(Sizes[i]),
                ),   
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),  
             ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Total:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                 ),
                ),
                SizedBox(width: 30),
                Container(
                  padding: EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Color(0xFFF7F8fA),
                    borderRadius: BorderRadius.circular(20),        
                  ),
                  child: Icon(
                  CupertinoIcons.minus,
                  size: 18,
                  color: Colors.redAccent,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '01',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Color(0xFFF7F8fA),
                    borderRadius: BorderRadius.circular(20),        
                  ),
                  child: Icon(
                  CupertinoIcons.minus,
                  size: 18,
                  color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Payment:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$3000.54',
                  style: TextStyle(
                    color: Color(0xFFFD725A),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute
                (builder: (context)=> CartScreen(),
                ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                decoration: BoxDecoration(
                  color: Color(0xFFFD725A),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  ),
              ) ,
            )
          ],
        ),
    );
  }
}
