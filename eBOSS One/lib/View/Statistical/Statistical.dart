import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Statistical extends StatefulWidget {
  Statistical({super.key});

  @override
  State<Statistical> createState() => _Statistical();
}

class _Statistical extends State<Statistical> {
  Map<String, double> dataMap = {
    "Fluttser": 10,
    "React": 3,
    "Xamarin": 2,
    "Ionic": 2,
    "test": 2,
  };

  //function
  Future<bool> loadData() async {
    await Future.delayed(Duration(seconds: 2)); // Giả lập thời gian tải
    return true;
  }

  Future<void> _refreshData() async {
    // Giả định rằng bạn sẽ làm thao tác làm mới dữ liệu ở đây.
    await Future.delayed(Duration(seconds: 0));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        backgroundColor: Colors.white,
        child: FutureBuilder<bool>(
            future: loadData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Hiển thị trang tải
                return CircularProgressIndicator(
                  color: Colors.deepOrange,
                );
              } else {
                return Container(
                  color: Color(0xFFF5F5F5),
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Tất cả",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              child: Text(
                                                "18",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              )),
                                          Text("Công việc",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Icon(
                                            Icons.work,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Đang xử lý",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.orange),
                                              )),
                                          Text("Công việc",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Icon(
                                            Icons.work_history,
                                            size: 20,
                                            color: Colors.orange,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Đã hoàn thành",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              child: Text(
                                                "20",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.lightBlueAccent),
                                              )),
                                          Text("Công việc",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Icon(
                                            Icons.check_circle,
                                            size: 20,
                                            color: Colors.lightBlueAccent,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            10.0), // Border radius
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Chưa làm",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10),
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.redAccent),
                                              )),
                                          Text("Công việc",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Roboto",
                                                  color: Colors.grey)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Icon(
                                            Icons.dangerous_rounded,
                                            size: 20,
                                            color: Colors.redAccent,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Border radius
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 20, bottom: 20),
                                    child: PieChart(
                                      dataMap: dataMap,
                                      chartRadius:
                                          MediaQuery.of(context).size.width /
                                              1.7,
                                      legendOptions: LegendOptions(
                                        legendPosition: LegendPosition.right,
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValuesInPercentage: true,
                                        showChartValueBackground: true,
                                        showChartValues: true,
                                        showChartValuesOutside: true,
                                        decimalPlaces: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                );
              }
            }),
        onRefresh: _refreshData,
      ),
    );
  }
}
