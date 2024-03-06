import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Restro extends StatefulWidget {
  const Restro({super.key});

  @override
  State<Restro> createState() => _RestroState();
}

class _RestroState extends State<Restro> {
  Future<String> loadJsonData() async {
    return await rootBundle.loadString('lib/data/restro.json');
  }

  Map<String, dynamic> restro = {};
  List<dynamic> restroname = [];

  @override
  void initState() {
    super.initState();
    restroName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Top Restaurants chains near you",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )),
        body: ListView.builder(
            itemCount: restroname.length,
            itemBuilder: ((context, index) {
              final hotels = restroname[index];
              final category = hotels['categories'].toString();
              final stars = hotels['stars'].toString();
              final name = hotels['name'];

              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height: 130,
                          width: 400,
                          // color: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      name,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                      weight: 14,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      stars,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  category,
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Location",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "FREE DELIVERY",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            })));
  }

  Future<void> restroName() async {
    final jsonData = await loadJsonData();
    final data = json.decode(jsonData);
    setState(() {
      restro = data;
      restroname = restro["restro"];
    });
  }
}
