import 'package:flutter/material.dart';

import '../Task/TaskDetailView.dart';
class DrawerHome extends StatefulWidget {
  const DrawerHome({
    super.key,
  });

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFF7034),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFED801C),
          title: const Text("Danh mục"),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: InkWell(
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.account_balance_wallet_rounded),
                        ),
                        Text("Quản lý nhiệm vụ",style: TextStyle(fontFamily: "Roboto",
                            fontSize: 15),)
                      ],
                    ),
                  ),
                  onTap : (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskDetail()),
                    );
                  } ,
                )
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: InkWell(
                    child: SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.add_chart_outlined),
                          ),
                          Text("Quản lý chấm công",style: TextStyle(fontFamily: "Roboto",
                              fontSize: 15),)
                        ],
                      ),
                    ),
                    onTap : (){} ,
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}