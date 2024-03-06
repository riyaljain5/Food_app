import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(8),
              height: 120,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Help",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black, // Set the color of the bottom border
                  width: 2.0, // Set the width of the bottom border
                ),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, top: 30.0, bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "Contact",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[300]),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.red[300],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Account',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Favourites, Hidden Restaurants & Settings',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // address
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Addresses',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Share, Edit & Add new Addresses',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                // wallet
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My orders',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Past orders',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payments & Refunds',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Refund Status & Payment modes',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                //
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards & Gifts ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Account Balance, Gift cards & Transaction history',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wallet ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Earn Cashbacks',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),

                // rukho
              ],
            ),
          ),
        ],
      ),
    );
  }
}
