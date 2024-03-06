import 'dart:convert';

// import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  final String item;

  const Popular({super.key, required this.item});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  Future<String> loadJsonData() async {
    return await rootBundle.loadString('lib/data/${widget.item}.json');
  }

  Map<String, dynamic> images = {};
  List<dynamic> pizza = [];

  @override
  void initState() {
    super.initState();
    fetchData();
    // fetchDrink();
  }

  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> pizzas = images['pizza'];
    // print(pizzas);
    return SizedBox(
        height: 350,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pizza.length,
            itemBuilder: (context, index) {
              final pizz = pizza[index];
              final image = pizz['image'];
              final name = pizz['name'];
              final price = pizz['price'].toString();

              final ingredients = pizz['ingredients'].toString();

              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 400,
                                    child: Image(
                                      image: NetworkImage(image),
                                    ),
                                  ),
                                  Text(
                                    name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 400,
                                    child: Text(
                                      ingredients,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                  Row(children: [
                                    InkWell(
                                      onTap: () {
                                        print("object");
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                width: 0.7,
                                                color: Colors.grey)),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 5),
                                        child: Center(child: Text("₹" + price)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //2nd button
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Icon(Icons.timer_outlined)),
                                        InkWell(
                                          onTap: () {
                                            print("object");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Center(
                                                child: Text(" 45-120 Min ")),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Row(children: [
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Icon(Icons.timer_outlined)),
                                        InkWell(
                                          onTap: () {
                                            print("object");
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              child:
                                                  Center(child: Text(" 4.5")),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    )
                                  ]),
                                ]))
                      ]),
                    )
                  ]);
            }));
  }

  Future<void> fetchData() async {
    final jsonData = await loadJsonData();
    final data = json.decode(jsonData);
    setState(() {
      images = data;
      pizza = images[widget.item];
    });
  }
}
