


import 'package:flutter/material.dart';
import 'package:slash_task/core/theming/text_style.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        color: Colors.grey[700],
        elevation: 4,
        child: ExpansionTile(
          childrenPadding: EdgeInsets.only(top: 0,bottom: 8,left: 20,right: 20),
          title: Text(
            'Description',
            style: TextStyles.font15WhiteRegular,
          ),
          children: [
            Text(
              'Description DescriptonDescr iptionDescriptionDescription',
              style: TextStyles.font15WhiteRegular,
            ),
          ],
        ),
      ),
    );
  }
}
