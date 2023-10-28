import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Model/CompanyNoticeRecord/CompanyNoticeModel.dart';

class CompanyNoticeViewModel extends StatelessWidget {
   CompanyNoticeViewModel({
    super.key,required this.data
  });
  Data data;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Padding(
      padding: EdgeInsets.only(
          top: 0, left: 10, right: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2.0,
        child: SizedBox(
          height: 80,
          width: double.infinity,
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 10, left: 5, right: 5),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.green,
                      size: 20,
                    )),
                    Container(
                      width: screenWidth-70,
                      child: Text(
                          data.notificationAbout.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 15, left: 40, right: 5),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data!.singerName.toString(),
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Roboto"),
                    ),
                    Text(
                      data!.recordDate.toString(),
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}