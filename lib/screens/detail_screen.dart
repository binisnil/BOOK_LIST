import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  DetailScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 184, 106, 218),
      ),
      body: Column(
        children: [
          Image.network(image),
          Padding(
              //도서사진과 내용 사이에 여백 주는 위젯
              padding: EdgeInsets.all(3)),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: EdgeInsets.all(10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.05,
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ]),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ))
              ]),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 95, 95, 98),
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(color: Color.fromARGB(255, 95, 95, 98)),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Color.fromARGB(255, 95, 95, 98),
                  ),
                  Text(
                    'Route',
                    style: TextStyle(color: Color.fromARGB(255, 95, 95, 98)),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.save,
                    color: Color.fromARGB(255, 95, 95, 98),
                  ),
                  Text(
                    'Save',
                    style: TextStyle(color: Color.fromARGB(255, 95, 95, 98)),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(description),
          )
        ],
      ),
    );
  }
}
