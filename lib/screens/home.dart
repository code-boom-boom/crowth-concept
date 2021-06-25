import 'package:flutter/material.dart';

import 'explorer_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin<HomePage>{

  int _tabIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Home'),),
          ExplorerPage(),
          Center(child: Text('Net of Nets'),),
          Center(child: Text('Activity'),),
          Center(child: Text('Post a job'),),
        ],
      ),
      bottomNavigationBar: Container(
        height: 72,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0,-1),
              blurRadius: 0.5,
              spreadRadius: 0.5
            )
          ]
        ),
        child: TabBar(
          controller: _tabController,
          onTap: (i){
            setState(() {_tabIndex=i;});
          },
          labelPadding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.zero,
          tabs: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _tabIndex==0?Color(0xFFF0F9F4):Colors.transparent
                  ),
                   child: Image.asset('assets/icons/home.png')
                ),
                Text('Home', style: TextStyle(fontSize: 10,color: Theme.of(context).accentColor, fontWeight: _tabIndex==0?FontWeight.bold:FontWeight.normal),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _tabIndex==1?Color(0xFFF0F9F4):Colors.transparent
                    ),
                    child: Image.asset('assets/icons/search.png')
                ),
                Text('Explorer',style: TextStyle(fontSize: 10,color: Theme.of(context).accentColor,fontWeight: _tabIndex==1?FontWeight.bold:FontWeight.normal),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _tabIndex==2?Color(0xFFF0F9F4):Colors.transparent
                    ),
                    child: Image.asset('assets/icons/users.png')
                ),
                Text('Net of Nets',style: TextStyle(fontSize: 10,color: Theme.of(context).accentColor, fontWeight: _tabIndex==2?FontWeight.bold:FontWeight.normal),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _tabIndex==3?Color(0xFFF0F9F4):Colors.transparent
                    ),
                    child: Image.asset('assets/icons/clipboard.png')
                ),
                Text('Activity',style: TextStyle(fontSize: 10,color: Theme.of(context).accentColor, fontWeight: _tabIndex==3?FontWeight.bold:FontWeight.normal),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _tabIndex==4?Color(0xFFF0F9F4):Colors.transparent
                    ),
                    child: Image.asset('assets/icons/new_post.png')
                ),
                Text('Post a job',style: TextStyle(fontSize: 10,color: Theme.of(context).accentColor, fontWeight: _tabIndex==4?FontWeight.bold:FontWeight.normal),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}