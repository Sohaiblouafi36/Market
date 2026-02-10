import 'package:flutter/material.dart';
import 'package:untitled23/poductCard.dart';
import 'package:untitled23/product.dart';
import 'package:untitled23/secrean.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
          children: [
            SizedBox(height: 20,),
                 Expanded(child: Stack(
                       children: [
                         Container(
                           margin:EdgeInsets.only(top: 75),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(40),
                                 topRight: Radius.circular(40),
                               ),
                             ),
                         ),

                         ListView.builder(
                           itemCount: products.length,
                           itemBuilder: (context, index) => Poductcard(
                             itemindex: index,
                             product: products[index],
                             press: (){
                               Navigator.push(context,
                               MaterialPageRoute(
                                   builder: (context) => Secrean(
                                     product: products[index],
                                   ),
                                 ),
                               );
                             },
                           ),
                         ),
                       ],
                    ),
                 ),
          ],
      ),
    );
  }
}
