import 'package:dymatestflutter/models/articles.dart';
import 'package:dymatestflutter/screens/displayscreens/locationelement.dart';
import 'package:flutter/material.dart';

class cookingview extends StatefulWidget {
  static const routeName = "cookingview";

  const cookingview({super.key});

  @override
  State<cookingview> createState() => _cookingviewState();
}

class _cookingviewState extends State<cookingview> {
  int _selecteditems = 1;

  List orders = [
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
    articles(
        nom: 'Frederic Flores',
        description:
            'Donec sed erat ut magna suscipit mattis. Aliquam erat volutpat. ',
        image: "assets/images/logo.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selecteditems,
        onTap: (index) => {
          setState(() {
            _selecteditems = index;
          })
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.coffee_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.garage), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ''),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[500],
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightGreen[200],
        iconSize: 35.0,
      ),
      body: Container(
        color: Colors.lightGreen[100],
        child: Column(children: [
          const SizedBox(
            height: 75.00,
          ),
          Text(
            "Cooking",
            style: TextStyle(fontSize: 35, color: Colors.green[400]),
          ),
          const SizedBox(
            height: 25.00,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: TextFormField(
                      autocorrect: false,
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              )),
          const SizedBox(
            height: 10.00,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return locationElement(articles: orders[index]);
            },
            itemCount: orders.length,
          ))
        ]),
      ),
    );
  }
}
