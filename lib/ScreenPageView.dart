import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AnalyseForfait.dart';
import 'AnnalyseDonne.dart';

class ScreenPageView extends StatefulWidget {
  const ScreenPageView({super.key});

  @override
  State<ScreenPageView> createState() => _ScreenPageViewState();
}

class _ScreenPageViewState extends State<ScreenPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                buildPage("Images/moov1.jpg"),
                buildPage("Images/MOOV3.jpg",),
                buildPage("Images/moov2.jpg"),
              ],
            ),
          ),
          buildPageIndicator(),
        ],
      ),
    );
  }

  Widget buildPage(String imagePath) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Image.asset(imagePath, width: 300),
            ),
          ),
          Container(
            width: Get.width / 1.2,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: Get.height / 18),
          ElevatedButton(
            onPressed: () {
              Get.to(AnalyseDonnee());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(237, 251, 143, 66),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
            ),
            child: Text("Plus de DATA",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          SizedBox(height: Get.height / 70),
          ElevatedButton(
            onPressed: () {
              Get.to(AnalyseDonnee());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF0EC6707),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
            ),
            child: Text("Moins de DATA",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
          SizedBox(height: Get.height / 70),
          ElevatedButton(
            onPressed: () {
              Get.to(AnalyseDonnee());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(237, 251, 143, 66),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 50),
            ),
            child: Text("Pas de DATA",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ],
      ),
    );
  }

  Widget buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: _currentPage == index ? 20 : 10,
          decoration: BoxDecoration(
            color: _currentPage == index
                ? Colors.blue
                : Colors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
        );
      }),
    );
  }
}
