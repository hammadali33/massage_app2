import 'package:flutter/material.dart';
import 'Bike_shop_page_data.dart';

class BikeShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Center",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.blue,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(),
                  title: Row(
                    children: [
                      Text(
                        "Mausam Rayamajhi",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.near_me,
                        color: Colors.white,
                      )
                    ],
                  ),
                  subtitle: Text(
                    "A trendsetter",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cardrow("864", "Collect"),
                      cardrow("51", "Attension"),
                      cardrow("267", "Track"),
                      cardrow("39", "Coupons"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iconrow(Icons.wallet_giftcard, "Wallet"),
              iconrow(Icons.car_repair, "Dilivery"),
              iconrow(Icons.message, "Message"),
              iconrow(Icons.money, "Money"),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ...List.generate(
              4,
              (index) => Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              spreadRadius: 5,
                              color: Colors.blue.withOpacity(0.2))
                        ]),
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          tileicon[index],
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: avtcolor[index],
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      title: Text(
                        listtitle[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                      ),
                    ),
                  ))
        ],
      ),
    );
  }

  Column iconrow(var c, String lable) {
    return Column(
      children: [
        Icon(
          c,
          size: 20,
        ),
        SizedBox(
          height: 5,
        ),
        Text(lable)
      ],
    );
  }

  Row cardrow(String digit, lable) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              digit,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              lable,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
