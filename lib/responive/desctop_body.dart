import 'package:flutter/material.dart';
import 'package:my_size/constants.dart';
import 'package:my_size/util/my_box.dart';

class DesctopBody extends StatelessWidget {
  const DesctopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 20, bottom: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // 4 коробки сверху
                    Container(
                      height: 700,
                      width: double.infinity,
                      child: AspectRatio(
                        aspectRatio: 5,
                        child: SizedBox(
                          width: double.infinity,
                          child: GridView.builder(
                              itemCount: 8,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5),
                              itemBuilder: (contex, index) {
                                return const MyBox();
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
