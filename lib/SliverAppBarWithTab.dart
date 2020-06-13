import 'package:flutter/material.dart';

class SliverAppBarWithTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 3, vsync: AnimatedListState());
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("SliverAppBarWithTab"),
            expandedHeight: 250.0,
            pinned: true,
            flexibleSpace: Container(
              color: Colors.redAccent,
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Overview'),
                Tab(text: 'Promotions'),
                Tab(text: 'Reviews'),
//                Tab(text: 'Overview'),
//                Tab(text: 'Promotions'),
//                Tab(text: 'Reviews'),
              ],
              controller: _tabController,
//              isScrollable: true,
            ),
//            FlexibleSpaceBar(
//              collapseMode: CollapseMode.pin,
//            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.amberAccent,
                    child: Icon(Icons.directions_car),
                  ),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                ],
                controller: _tabController,
              ),
            ),
          )
        ],
      ),
    );
  }
}
