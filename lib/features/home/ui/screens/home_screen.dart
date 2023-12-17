

import 'package:flutter/material.dart';


import '../../../../core/theming/text_style.dart';
import '../widgets/home_widget/home_product_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black38,
          title: Text('home screen',style: TextStyles.font17WhiteBold,),
        ),
        body:  const SingleChildScrollView(
          child: Column(
            children: [
              HomeProductItemWidget()
            ],
          ),
        )
    );
  }
}