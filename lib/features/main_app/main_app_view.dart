import 'package:bootcamp_starter/constants.dart';
import 'package:bootcamp_starter/features/active_share/receive_view.dart';
import 'package:bootcamp_starter/features/home/home_view.dart';
import 'package:bootcamp_starter/features/main_app/widgets/custom_floating_nav_bar.dart';
import 'package:bootcamp_starter/features/profile/add_or_edit_link_view.dart';
import 'package:bootcamp_starter/features/profile/profile_view.dart';
import 'package:flutter/material.dart';

class MainAppView extends StatefulWidget {
  static String id = '/mainAppView';

  const MainAppView({super.key});

  @override
  State<MainAppView> createState() => _MainAppViewState();
}

class _MainAppViewState extends State<MainAppView> {
  int _currentIndex = 1;

  late List<Widget?> screensList = [
    const ReceiveView(),
    const HomeView(),
     ProfileView(isUser: false,username: '',)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:_currentIndex == 2? FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddOrEditLinksView()));
        },
        child: const Icon(Icons.add,color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: kPrimaryColor,
      ) : null,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/qrCodeView');
              },
              icon:
              const Icon(Icons.qr_code_scanner_sharp, color: Colors.black)),
        ],
      ),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: screensList[_currentIndex],
      extendBody: true,
      bottomNavigationBar: CustomFloatingNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
