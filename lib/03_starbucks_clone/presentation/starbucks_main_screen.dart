import 'package:flutter/material.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/starbucks_home.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/starbucks_order.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/starbucks_other.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/starbucks_pay.dart';
import 'package:learn_flutter/03_starbucks_clone/presentation/tabs/starbucks_shop.dart';

class StarbucksMainScreen extends StatefulWidget {
  const StarbucksMainScreen({super.key});

  @override
  State<StarbucksMainScreen> createState() => _StarbucksMainScreenState();
}

class _StarbucksMainScreenState extends State<StarbucksMainScreen> {

  int _currentTab = 0;
  final tabs = [
    StarBucksHome(),
    StarbucksPay(),
    StarbucksOrder(),
    StarbucksShop(),
    StarbucksOther(),
  ];

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentTab],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            isOpen = !isOpen;
          });
        },
        isExtended: isOpen,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        shape: isOpen? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) : const CircleBorder(),
        icon: const Icon(Icons.pedal_bike_outlined),
        label: const Text('Delivers'),
        // child: _floatingActionStyle(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentTab = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        selectedItemColor: Colors.green,
        selectedFontSize: 12,
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Order',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ), BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Other',
          ),
        ],
      ),
    );
  }
}

