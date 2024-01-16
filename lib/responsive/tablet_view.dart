import 'package:flutter/material.dart';
import 'package:responsive_template/constants.dart';

import '../widgets/my_box.dart';
import '../widgets/my_tile.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppbar,
      drawer: myDrawer,
      body: Column(
        children: [

          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (context,index){
                    return const MyBox();
                  }),
            ),
          ),

          Expanded(child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index){
                return const MyTile();
              }))
        ],
      ),
    );
  }
}
