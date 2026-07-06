
import 'package:burgeista/core/constant/spacing.dart';
import 'package:burgeista/features/cart/widgets/cart_item.dart';
import 'package:burgeista/features/proudcts/widgets/add_to_cart_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
         SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
           child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return CartItem(
                  isLoading: false,
                  image: 'assets/tst.png',
                  text: 'Cheese Burger',
                  desc: 'With extra cheese',
                  number: 1,
                  onAdd: () {},
                  onMin: () {},
                  onRemove: () {},
                );
              },
            ),
         ),
          HeightSpace(20),
         TotalWithBtnWidget(onAddT: (){}, buttonText: 'Checkout', totalPrice: 18.19)
        ],
      ),
    );
  }
}
