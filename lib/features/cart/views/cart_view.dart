import 'package:burgeista/core/routing/app_routs.dart';
import 'package:burgeista/features/cart/widgets/cart_item.dart';
import 'package:burgeista/core/widgets/total_with_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> itemCounts;
  @override
  void initState() {
    itemCounts = List.generate(cartItems.length, (index) => cartItems[index]['number']);
    super.initState();
  }
  final List<Map<String, dynamic>> cartItems = [
    {
      'image': 'assets/test/tst.png',
      'text': 'Cheese Burger',
      'desc': 'With extra cheese',
      'number': 1,
    },
    {
      'image': 'assets/test/tst.png',
      'text': 'Veggie Burger',
      'desc': 'With fresh vegetables',
      'number': 2,
    },
    {
      'image': 'assets/test/tst.png',
      'text': 'Chicken Burger',
      'desc': 'With crispy chicken',
      'number': 1,
    },
      {
      'image': 'assets/test/tst.png',
      'text': 'Chicken Burger',
      'desc': 'With crispy chicken',
      'number': 1,
    },
      {
      'image': 'assets/test/tst.png',
      'text': 'Chicken Burger',
      'desc': 'With crispy chicken',
      'number': 1,
    },
      {
      'image': 'assets/test/tst.png',
      'text': 'Chicken Burger',
      'desc': 'With crispy chicken',
      'number': 1,
    },
  ];
 
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
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return CartItem(
                  isLoading: false,
                  image: item['image'],
                  text: item['text'],
                  desc: item['desc'],
                  number: item['number'],
                  onAdd: () {
                    setState(() {
                      itemCounts[index]++;
                      cartItems[index]['number'] = itemCounts[index];
                    });
                  },
                  onMin: () {
                    setState(() {
                      if (itemCounts[index] > 0) {
                        itemCounts[index]--;
                        cartItems[index]['number'] = itemCounts[index];
                      }
                    });
                  },
                  onRemove: () {},
                );
              },
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 100.h,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: TotalWithBtnWidget( 
          onAddT: ()=>GoRouter.of(context).pushNamed(AppRouts.checkoutView),
          buttonText: 'Checkout',
          totalPrice: 18.19,
        ),
      ),
    );
  }
}
