import 'package:flutter/material.dart';


class ProductColorsSizeAndMaterialWidget extends StatefulWidget {
  const ProductColorsSizeAndMaterialWidget({super.key});

  @override
  State<ProductColorsSizeAndMaterialWidget> createState() => _ProductColorsSizeAndMaterialWidgetState();
}
 List myColors = <Color>[
   Colors.white,
   Colors.red,
   Colors.green,
   Colors.pink,
   Colors.purple,
   Colors.blue
 ];
Color primaryColor = myColors[0];

class _ProductColorsSizeAndMaterialWidgetState extends State<ProductColorsSizeAndMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
          children: [
            buildColorIcons()
          ],
      ),
    );
  }


  Widget buildColorIcons() =>Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for(var i = 0; i<6; i++)buildIconBtn(myColors[i])
    ],
  );

  Widget buildIconBtn(Color myColor)=> Container(
    child: Stack(
      alignment: Alignment.center,
      children: [
        Icon(Icons.check,size:  20,color: primaryColor == myColor ?myColor : Colors.transparent,),
        IconButton(onPressed:(){
          setState(() {
            primaryColor = myColor;
          });
        } , icon: Icon(Icons.circle,
          color: myColor.withOpacity(0.65),
          size: 35,
        ))
      ],
    ),
  );



}


