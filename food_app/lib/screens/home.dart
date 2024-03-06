import 'package:flutter/material.dart';
import 'package:food_app/components/list.dart';
import 'package:food_app/components/popular.dart';
import 'package:food_app/screens/profile.dart';
import 'package:food_app/screens/restro.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:food_app/restaurants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cravingz"),

        // leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.grey),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 44,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the Home menu item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle the Settings menu item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.restaurant_menu_outlined,
          text: "Restro",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Restro()));
          },
        ),
        GButton(
          icon: Icons.food_bank_outlined,
          text: "Food",
        ),
        GButton(
          icon: Icons.person_2_outlined,
          text: "Profile",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Fast & Delicious Food",
                    style: TextStyle(fontSize: 44),
                  ),
                )
              ],
            ),
            const MenuList(),
            const SizedBox(
              height: 20,
            ),
            //pizza
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Pizza",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "pizza",
            ),
            //pasta
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Pasta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "pasta",
            ),

            //sides
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Sides",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "sides",
            ),

            //drinks
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Drinks",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "drinks",
            ),

            //salads
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Salads",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "salads",
            ),

            //desserts
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Desserts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Popular(
              item: "dessert",
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Live \nit up! ",
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Crafted with ❤️ in Pune, India",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
