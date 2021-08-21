import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../models/cart.dart';
import 'package:flutter/material.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Slidable(
            key: Key(demoCarts[index].product.id.toString()),
            dismissal: SlidableDismissal(
              child: SlidableDrawerDismissal(),
              onDismissed: (type) {
                print("Dismissed");
              },
            ),
            actionPane: SlidableBehindActionPane(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    topLeft: Radius.circular(15)),
              ),
              child: CartItemCard(
                cart: demoCarts[index],
              ),
            ),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: "Share",
                color: Colors.green,
                icon: Icons.share,
                onTap: () {
                  print("Shared");
                },
              ),
              IconSlideAction(
                caption: "Delete",
                color: Colors.red,
                icon: Icons.delete,
                onTap: () {
                  print("Deleted");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
