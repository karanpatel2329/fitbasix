import 'package:flutter/material.dart';

import 'features/home/view/home.dart';

class PageHandler extends StatefulWidget {
  const PageHandler({Key? key}) : super(key: key);

  @override
  State<PageHandler> createState() => _PageHandlerState();
}

class _PageHandlerState extends State<PageHandler> {
  int _selectedIndex = 0;
  PageController controller = PageController(viewportFraction: 1, keepPage: true);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 37,
            ),
          ],
        ),
        child: BottomNavigationBar(
            elevation: 4,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            selectedItemColor: Color(0xff418a48),
            currentIndex: _selectedIndex,
            onTap: (value){
              controller.jumpToPage(value);
              setState(() {
                _selectedIndex=value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.messenger_outline), label: "Get Trained"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
              BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: "Tools"),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
            ]),
      ),
      body: PageView(
        controller: controller,
          physics: NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: [
          HomePage(),
          DummyPage(title: 'Get Trained'),
          DummyPage(title: 'Post'),
          DummyPage(title: 'Tools'),
          DummyPage(title: 'More'),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DummyPage extends StatefulWidget {
  DummyPage({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.title,style: TextStyle(color: Colors.white),),
    );
  }
}

