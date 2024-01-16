import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_template/constants.dart';
import 'package:responsive_template/widgets/my_box.dart';
import 'package:responsive_template/widgets/my_tile.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppbar,
      drawer: myDrawer,
      body: Column(
        children: [
          
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context,index){
                    return const MyBox();
                  }),
            ),
          ),
          
          Expanded(child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index){
            return const MyTile();
          }))
        ],
    ),  
    );
  }
}
