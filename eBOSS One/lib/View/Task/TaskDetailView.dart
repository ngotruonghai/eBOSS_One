import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskDetail extends StatefulWidget {
  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 2));

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Báo cáo công việc"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.account_balance_wallet),
                child: Text
                  ("Quản lý nhiệm vụ",
                textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              ),
              Tab(icon: Icon(Icons.account_tree_sharp),child: Text("Thống kê",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, fontFamily: "Roboto"),),),
              Tab(icon: Icon(Icons.ad_units_outlined),child: Text("Báo cáo",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, fontFamily: "Roboto"),),)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RefreshIndicator(
            backgroundColor: Colors.white,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(""),
                      Text(""),
                    ],
                  ),
                );
              },
            ),
            onRefresh: _refreshData),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }
}