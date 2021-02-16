import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './components/horizontal_item.dart';
import 'components/horizontal_product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/logitech_logo.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Color(0xFF333333),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search_outlined,
                        color: Color(0xFF333333),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Text(
                      'PLAY TO WIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 12),
                    HorizontalItem(
                      selected: true,
                    ),
                    SizedBox(width: 16),
                    HorizontalItem(),
                    SizedBox(width: 16),
                    HorizontalItem(),
                    SizedBox(width: 16),
                    HorizontalItem(),
                    SizedBox(width: 16),
                    HorizontalItem(),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Products',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Expanded(
                flex: 6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 12),
                    HorizontalProduct(),
                    SizedBox(width: 12),
                    HorizontalProduct(),
                    SizedBox(width: 12),
                    HorizontalProduct(),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Color(0xFFC9CCD2),
        selectedItemColor: Color(0xFF00B8FC),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/logitech_logo.png',
              color:
                  _selectedIndex == 1 ? Color(0xFF00B8FC) : Color(0xFFC9CCD2),
              height: 24,
            ),
            label: 'G',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
