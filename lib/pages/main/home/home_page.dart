import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 160,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black87),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "Search...",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Icon(
            CupertinoIcons.bell,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/home1.jpg",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 350,
                ),
                SizedBox(height: 15),
                _buildRow(),
                Container(
                  color: Colors.black12,
                  height: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            _buildDetailIcon(Icons.bike_scooter),
            Text("뷰티, 운동"),
          ],
        ),
        Column(
          children: [
            _buildDetailIcon(Icons.music_note),
            Text("댄스, 뮤직"),
          ],
        ),
        Column(
          children: [
            _buildDetailIcon(Icons.article_rounded),
            Text("미술, 묵학"),
          ],
        ),
        Column(
          children: [
            _buildDetailIcon(Icons.ac_unit_rounded),
            Text("공예, 기타"),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailIcon(IconData mIcon) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(mIcon),
              ),
            ),
          )
        ],
      ),
    );
  }
}
