import 'package:flutter/material.dart';
import 'package:untitled23/constants.dart';
import 'package:untitled23/product.dart';


class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [

                 Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)
                            ) ,
                       color: kBackgroundColor,

                            ),
                   height: 580,
                   child: Column(
                     children: [
                       Container(
                         alignment: Alignment.bottomCenter,
                         margin: EdgeInsets.symmetric(vertical: 35),
                         height: size.width * 0.8,
                         child: Stack(
                           children: [
                             Container(
                               height: size.width * 0.7,
                               width:  size.height *0.7,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 shape: BoxShape.circle,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 40,right: 30),
                               child: Image.asset(product.image,
                                    height: size.width *0.75,
                                    width: size.width *0.75,
                                 fit: BoxFit.cover,

                               ),
                             ),
                           ],

                         ),
                       ),
                       Container(
                         height: 30,
                         width: 150,
                         child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.red
                                 ),
                                 height: 20,
                                 width: 20,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.black54
                                 ),
                                 height: 20,
                                 width: 20,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left:20),
                               child: Container(
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.blueAccent
                                 ),
                                 height: 20,
                                 width: 20,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 200,top: 40),
                         child: Text(
                           product.title,
                           style: TextStyle(
                             fontSize: 27,
                              fontWeight: FontWeight.w500
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 200,top: 5),
                         child: Text(
                           'السعر : \$${product.price} ',
                           style: TextStyle(
                             color: kSecondaryColor,
                               fontSize: 27,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                       ),
                     ],

                   ),
                   ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
               child: Text(
                 product.subTitle,
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 30,
                 fontWeight: FontWeight.w600
               ),
               ),
             )

      ],
    );
  }
}
