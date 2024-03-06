import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("All")),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text("Pizza")),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Pasta"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Drinks"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Salads"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Desserts"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Sides"),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(5),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("More"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
