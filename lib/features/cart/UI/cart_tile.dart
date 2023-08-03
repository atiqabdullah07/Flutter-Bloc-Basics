import 'package:b1/features/home/Models/product_data_model.dart';

import 'package:flutter/material.dart';

import '../bloc/cart_bloc.dart';

class CartTileWidget extends StatelessWidget {
  const CartTileWidget(
      {super.key, required this.productDataModel, required this.cartBloc});
  final ProductDataModel productDataModel;
  final CartBloc cartBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Container(
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: NetworkImage(
                  productDataModel.imageUrl,
                ),
                fit: BoxFit.cover),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productDataModel.name),
                Text(productDataModel.description),
                Text('Price: \$${productDataModel.price}'),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     IconButton(
            //         onPressed: () {
            //           cartBloc.add(HomeProductWishlistButtonClickedEvent(clickedProduct: productDataModel));
            //         },
            //         icon: const Icon(Icons.favorite_border)),
            //     IconButton(
            //         onPressed: () {
            //           cartBloc.add(HomeCartButtonNavigateClickedEvent());
            //         },
            //         icon: const Icon(Icons.shopping_bag_outlined))
            //   ],
            // )
          ],
        )
      ]),
    );
  }
}
