import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationPage extends StatefulWidget {
  @override
  _ValidationPageState createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> tabBarItems = [
    Tab(text: 'Society Registration Document'),
    Tab(text: 'Society Signature Resolution'),
    Tab(text:"Authorization Letter"),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabBarItems.length, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 100,top: 50,right: 350,bottom: 5),
                child: Container(
                  height: 35,
                  width: Get.width*0.65,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color:Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    controller: _tabController,
                    tabs: tabBarItems,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 1.0,
                    labelPadding: EdgeInsets.only(left: 0, right: 0,top: 0,bottom:0),
                    labelStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                    unselectedLabelStyle: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Expanded(

                child: TabBarView(

                  controller: _tabController,
                  children: [
                    Row( crossAxisAlignment:CrossAxisAlignment.start,

                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10,left: 100,bottom: 10,right: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          width:500,
                          height:400,
                          child: Center(child: Text('Registration document',style: TextStyle(
                            color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold,
                          ),)),
                          padding: EdgeInsets.only(top:10,bottom: 10,left: 10,right:10),
                        ),
                        Container(
                            width:200,
                            height:250,
                            child: Center(child: Text("baba"))),
                        // Container(
                        //   color: Colors.black,
                        //   width:400,
                        //   height:400
                        // )
                      ],
                    ),
                    Row(crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10,left: 100,bottom: 10,right: 20),
                          decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          width:500,
                          height:400,
                          child: Center(child: Text('Signature resolution',style: TextStyle(
                            color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold,))),
                          padding: EdgeInsets.only(top:10,bottom: 10,left: 10,right:10),
                        ),
                        Container(
                            width:200,
                            height:250,
                            child: Text("babababa")),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10,left: 100,bottom: 10,right: 20),
                          decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          width:500,
                          height:400,
                          child: Center(child: Text('Authorization letter',style: TextStyle(
                            color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold,))),
                          padding: EdgeInsets.only(top:50,bottom: 20,left: 50,right:10),
                        ),
                        Container(
                            width:200,
                            height:250,
                            child: Text("bababababaa")),
                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );;
  }
}
