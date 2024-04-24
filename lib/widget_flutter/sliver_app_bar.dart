import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            title: Text("MoAmr"),
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Amr"),
              centerTitle: true,
            ),

          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Center(
                child: Text("Moahemd amr",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 400,
                ),
                ),
              ),
            ]
          ),
          )
        ],
      ),
    );
  }
}
