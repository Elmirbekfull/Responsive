import 'package:flutter/material.dart';
import 'package:my_size/constants.dart';
import 'package:my_size/util/my_box.dart';

class MacOSBody extends StatelessWidget {
  const MacOSBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, top: 20, bottom: 20),
          child: Column(
            children: [
              // 4 коробки сверху
              Container(
                height: 700,
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 3,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
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
    );
  }
}
