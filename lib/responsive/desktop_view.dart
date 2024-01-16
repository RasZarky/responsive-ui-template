import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_template/constants.dart';

import '../widgets/my_box.dart';
import '../widgets/my_tile.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      appBar: myAppbar,
      body: Row(
        children: [
          myDrawer,

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
            ),
          ),
          Expanded(child: Column(
            children: [
              Expanded(child: Container(
                color: Colors.grey[400],
              ))
            ],
          ))
        ],
      ),
    );
  }
}
