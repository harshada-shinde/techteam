//HS
//Code for SearchPage

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.orangeAccent, width: 1.0),
                  color: Colors.grey.shade200,
                ),
                child: TextField(
                  cursorColor: Colors.black38,
                  controller: controller,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    hintText: 'What service are you looking for today?',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
          Stack(
          children :[

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black38, width: 1.0),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: LayoutBuilder(
                builder: (context, constraint) {
                  return Container(
                    width: constraint.maxWidth,
                    // height: 100,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                            child: Image.asset('logo.png', width: 100, height: 100),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 5, 5),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: constraint.maxWidth - 130,
                                child: const Text(
                                  'Tenu de livre',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                width: constraint.maxWidth - 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.deepOrangeAccent,
                                          padding: const EdgeInsets.all(3),
                                          child: Row(
                                            children: const [
                                              Text(
                                                '4.4',
                                                textAlign: TextAlign.end,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      'Starting at',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '\$500',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrangeAccent,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
            const Positioned(
              top: 15,
              right: 25,
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
            const Positioned(
              bottom: 15,
              right: 25,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
            ),

          ]
          )

          ],
          ),
        ),
      ),
    );
  }
}
