import 'package:flutter/material.dart';
import 'package:ndamar/configs/color_config.dart';
import 'package:ndamar/configs/icon_config.dart';
import 'package:ndamar/configs/loading_config.dart';
import 'package:ndamar/models/car_name.dart';
import 'package:ndamar/pages/front-office/auth/login_screen.dart';
import 'package:ndamar/pages/front-office/auth/register_screen.dart';
import 'package:ndamar/pages/front-office/publication/list_car_screen.dart';
import 'package:ndamar/widgets/custom_column.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const ListCarScreen(moreRentedCars: [
      CustomColumn(
          img_src: "assets/car_.jpg",
          marque: "BMW X3",
          price: "50000 F",
          idPublication: 10),
    ]),
    const Text('Search Page', style: TextStyle(fontSize: 30)),
    const Text('Profile Page', style: TextStyle(fontSize: 30)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the index on tap
    });
  }

  List<CarName> _carNames = [
    CarName(name: "BMW", isActif: true, index: 0),
    CarName(name: "AUDI", isActif: false, index: 1),
    CarName(name: "MERCEDES", isActif: false, index: 2),
    CarName(name: "TOYOTA", isActif: false, index: 3),
    CarName(name: "RENAULT", isActif: false, index: 4),
    CarName(name: "CITROEN", isActif: false, index: 5),
    CarName(name: "MISUBISHI", isActif: false, index: 6),
    CarName(name: "JEEP", isActif: false, index: 7),
  ];

  @override
  void initState() {
    super.initState();
    _waitAndUpdate(2);
  }

  bool _isLoading = true;
  // Function that waits for a certain duration and then updates the state
  void _waitAndUpdate(int durationSeconds) async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2)); // Wait for 2 seconds
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen())),
              child: Image.asset(
                color: ColorConf.cunstomOrange,
                "icons/register.png",
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),

            ),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)),
              child: Padding(

                padding: const EdgeInsets.only(right: 15),
                child: Image.asset(
                  color: ColorConf.cunstomOrange,
                  "icons/enter.png",
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.blue[800],
          title: const Text(
            "Ndamar",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          ),
          bottom: _selectedIndex == 0
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(90),
                  child: Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue[800]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: _carNames.map((e) {
                            return TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: e.isActif
                                    ? ColorConf.cunstomOrange
                                    : null, // Assuming this is a custom color
                              ),
                              onPressed: () {
                                seletedCarName(e);
                              },
                              child: Text(
                                e.name, // Use the mapped car name `e` as the button text
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(), // Convert the Iterable to a List<Widget>
                        ),
                      ),
                    ),
                  ),
                )
              : null,
        ),
        body: _isLoading ? LoadingConfig.loading() : _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: IconConfig.homeIconBlue,
              icon: IconConfig.homeIcon,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: IconConfig.searchIconBlue,
              icon: IconConfig.searchIcon,
              label: 'Search',
            ),
            BottomNavigationBarItem(
              activeIcon: IconConfig.userIconBlue,
              icon: IconConfig.userIcon,
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex, // The currently selected tab
          selectedItemColor: Colors.blue[800], // The color of the selected item
          onTap: _onItemTapped, // The callback when a tab is tapped
          backgroundColor: Colors.white,
        ));
  }

  void seletedCarName(CarName e) {
    _waitAndUpdate(2);
    List<CarName> new_list = List.filled(
        _carNames.length, CarName(index: 0, isActif: false, name: ""));
    CarName car = _carNames.where((element) => element.name == e.name).first;
    car.isActif = true;
    new_list[car.index] = car;
    for (var e1 in _carNames) {
      if (e1.name != car.name) {
        e1.isActif = false;
        new_list[e1.index] = e1;
      }
    }
    setState(() {
      _carNames = new_list;
    });
  }
}
