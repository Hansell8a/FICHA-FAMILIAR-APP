import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/home/views/family_sheet_view.dart';
import 'package:flutter_boiler/presentation/screens/home/views/home_view.dart';
import 'package:flutter_boiler/utils/global.colors.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);
  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  // Corrección en la declaración del constructor

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeView(),
      const HomeView(),
      const FamilySheetView()
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: GlobalColors.backgroundColor2,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home_filled,
                  color: GlobalColors.color4,
                  size: 45,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.add_circle,
                  color: GlobalColors.color4,
                  size: 45,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.person_rounded,
                  color: GlobalColors.color4,
                  size: 45,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list_alt_rounded,
                  color: GlobalColors.color4,
                  size: 45,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: GlobalColors.color4,
                  size: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
