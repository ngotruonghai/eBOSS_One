import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Model/MissionUnFinish/DataMissionUnFinishModel.dart';
import '../../Services/BaseServices/SharedPreferencesService.dart';
import '../../Services/NetWork/NetWorkRequest.dart';
import '../../ViewModel/Task/ListTaskViewModel.dart';

class TaskDetail extends StatefulWidget {
  @override
  State<TaskDetail> createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  List<Data>? listdata;

  Future<void> _loadInfoMissionUnFinish() async {
    Map<String, dynamic> request = {
      'userID': SharedPreferencesService.getString(KeyServices.KeyUserID),
      'language': '105',
    };

    final responses = await NetWorkRequest.PostJWT("/eBOSS/api/MissionUnFinish/DataMissionUnFinish", request);
    final MissionUnFinish = DataMissionUnFinishModel.fromJson(responses);
    setState(() {
      listdata = MissionUnFinish.data;
    });
  }

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _loadInfoMissionUnFinish();
    });
  }
  @override
  void initState() {
    super.initState();
    _loadInfoMissionUnFinish();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFe67e22),
          title: Text("Quản lý nhiệm vụ"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.account_balance_wallet),
                child: Text(
                  "Nhiệm vụ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              ),
              Tab(
                icon: Icon(Icons.account_tree_sharp),
                child: Text(
                  "Thống kê",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              ),
              Tab(
                icon: Icon(Icons.ad_units_outlined),
                child: Text(
                  "Báo cáo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TaskManagement(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ),
    );
  }

  Container TaskManagement() {
    return Container(
      color: Color(0xFFdfe6e9),
      child: RefreshIndicator(
          backgroundColor: Colors.white,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (listdata == null) // Sử dụng if để kiểm tra điều kiện
                     Center(
                       child:  Container(
                         child: Text("Đang tải dữ liệu vui lòng đợi..."),
                       ),
                     )
                    else
                      Column(
                        children: listdata!
                            .map((item) => ListTask(
                                  data: item,
                                ))
                            .toList(),
                      )
                  ],
                ),
              );
            },
          ),
          onRefresh: _refreshData),
    );
  }
}
