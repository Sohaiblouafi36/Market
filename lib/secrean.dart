import 'package:flutter/material.dart';
import 'package:untitled23/Body.dart';
import 'package:untitled23/constants.dart';
import 'package:untitled23/product.dart';


class Secrean extends StatelessWidget {
  const Secrean({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:kPrimaryColor ,
       appBar: AppBar(
         backgroundColor: kBackgroundColor,
         elevation: 0,
         leading: IconButton(
           icon:Icon(Icons.arrow_back,color: Colors.cyan,),
           onPressed: (){
             Navigator.pop(context);
           },
         ),
         centerTitle: false,
         title:
           Text('Back',style: TextStyle(fontSize: 20),),

      ),
       body: Body(product: product,),

    );
  }
}
