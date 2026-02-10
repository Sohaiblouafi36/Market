
import 'package:flutter/material.dart';
import 'package:untitled23/constants.dart';
import 'package:untitled23/product.dart';


class Poductcard extends StatelessWidget {
  final int itemindex;
  final Product product;
  final press;

  const Poductcard({
    Key? key ,
    required this.itemindex,
    required this.product,
    required this.press,
        }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return   Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 160,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,15),
                        blurRadius: 25,
                        color: Colors.black26
                    )
                  ]
              ),
            ),
            Positioned(
              top: 0,
                left: 0,
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
                  width: 160,
                  height: 150,
                  child: Image.asset(product.image,
                  fit: BoxFit.cover,
                  ),
            ),
            ),
            Positioned(
              bottom: 0,
                right: 0,
                child: SizedBox(
                 height: 136,
                  width: size.width-150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(product.title,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right: 37),
                         child: Text(product.subTitle,
                             style: Theme.of(context).textTheme.bodyMedium,
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 35,
                          width: 144,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kSecondaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 7,left: 30,right: 22,bottom: 8),
                            child: Text('السعر: \$ ${product.price} '),
                          ),
                        ),
                      )
                    ],
                  ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}
