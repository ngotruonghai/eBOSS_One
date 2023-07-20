import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

class _HomeScreen extends State<HomeScreen> {
  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 2));

    // Sau khi làm mới dữ liệu, bạn có thể cập nhật danh sách items tại đây.
    setState(() {
      items = [
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6',
        'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6' 'Item 1',
        'Item 2',
        'Item 3',
        'Item 4',
        'Item 5',
        'Item 6'
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        backgroundColor: Colors.white,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFf1f2f6),
                    ),
                    width: double.infinity,
                    height: 150,
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 30, left: 20),
                                child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: SizedBox(
                                    height: 50,
                                    width: 150,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Check in",
                                        style: TextStyle(fontFamily: "Roboto",
                                            fontSize: 15),
                                      ),
                                      // style: ElevatedButton.styleFrom(
                                      //     shape: StadiumBorder(
                                      //         side: BorderSide.none
                                      //     ),
                                      //     padding: EdgeInsets.symmetric(
                                      //         vertical: 10, horizontal: 10),
                                      //     backgroundColor: Color(0xFF70A1FF)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 30, right: 20),
                                child:Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: SizedBox(
                                    height: 50,
                                    width: 150,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Check out",
                                        style: TextStyle(fontFamily: "Roboto",
                                            fontSize: 15),
                                      ),
                                      // style: ElevatedButton.styleFrom(
                                      //     shape: StadiumBorder(
                                      //         side: BorderSide.none
                                      //     ),
                                      //     padding: EdgeInsets.symmetric(
                                      //         vertical: 10, horizontal: 10),
                                      //     backgroundColor: Color(0xFF70A1FF)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ),
                  Text(""),
                  Text(""),
                ],
              ),
            );
          },
        ),
        onRefresh: _refreshData);
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
