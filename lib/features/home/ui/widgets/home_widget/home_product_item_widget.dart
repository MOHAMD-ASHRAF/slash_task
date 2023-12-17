import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/logic/slash_cubit.dart';
import 'package:slash_task/features/home/ui/screens/product_details_screen.dart';
import '../../../../../core/theming/text_style.dart';
import '../../../../../core/utils/dummy.dart';


class HomeProductItemWidget extends StatelessWidget {
  const HomeProductItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text('New Arrival', style: TextStyles.font17WhiteBold),
              const Spacer(),
              Text('View All',
                  style: TextStyles.font15GrayRegular.copyWith(fontSize: 12.sp)),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          BlocConsumer<SlashCubit, SlashState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 35.0,
                  maxHeight: double.infinity,
                ),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 20, // spacing between rows
                    crossAxisSpacing: 12, // spacing between columns
                  ),
                  itemCount: productDummyList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                     ProductsDetailsScreen(productModel: productDummyList[index])));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child:  Image(
                                          image:AssetImage(productDummyList[index].image),
                                          fit: BoxFit.fill,
                                          width: double.infinity,
                                        ))),
                              ),
                               Positioned(
                                  top: 10,
                                  right: 10,
                                  child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.grey[500],
                                      child: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,))
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                         Row(
                           children: [
                             Text(
                               productDummyList[index].name,style: TextStyles.font15WhiteRegular,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                        ),
                             Spacer(),
                             Row(
                               children: [

                                 Text(productDummyList[index].rating.toString(),style: TextStyles.font15WhiteRegular),
                                 SizedBox(width: 4.w,),
                                 Icon(Icons.star,color: Colors.yellow),
                               ],
                             ),
                           ],
                         ),
                         Text(
                           productDummyList[index].price.toString(),style: TextStyles.font15WhiteRegular,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
