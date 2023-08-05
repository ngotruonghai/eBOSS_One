import 'package:eboss_one/View/Login/LoginLayout.dart';
import 'package:flutter/material.dart';
import '../../View/Home/HomeDrawerView.dart';
import '../../View/Home/HomeScreenView.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF70A1FF),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/lego_eboss.png"),
              width: 30,
              height: 30,
            ),
            Text(" eBOSS ONE", style: TextStyle(fontSize: 30))
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF70A1FF),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: "menu",
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_none))
        ],
      ),
      drawer: const DrawerHome(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: AppBarBootom(onItemTapped: onItemTapped),
    );
  }
}

class AppBarBootom extends StatefulWidget {
  const AppBarBootom({super.key, required this.onItemTapped});

  final onItemTapped;

  @override
  State<AppBarBootom> createState() => _AppBarBootomState();
}

class _AppBarBootomState extends State<AppBarBootom> {
  int IndexTab = 0;

  void clickOnTab(int Index) {
    widget.onItemTapped(Index);
    setState(() {
      IndexTab = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: IndexTab,
      backgroundColor: const Color(0xFF70A1FF),
      type: BottomNavigationBarType.fixed,
      selectedItemColor:
      const Color(0xFF0c2461), // Set the color of the selected tab
      unselectedItemColor: Colors.black38,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_to_photos_outlined), label: "Chức năng"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Cài đặt"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded), label: "Hồ sơ")
      ],
      onTap: (index) {
        clickOnTab(index);
      },
    );
  }
}


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 2'),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.remove('Token');
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        child: Text("Đăng xuất"),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 4'),
    );
  }
}
