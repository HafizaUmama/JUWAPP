import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<CardItem> items = [
    CardItem(
      urlImage: 'images/closeup_cctv_camera_wall.jpg',
      title: "CCTV Installation",
    ),
    CardItem(
      urlImage: 'images/full_shot_people_cleaning_office.jpg',
      title: "Office Cleaning",
    ),
    CardItem(
      urlImage: 'images/technician_gesturing_thumb_up.jpg',
      title: "Sanitary Technician",
    ),
    CardItem(
      urlImage: 'images/networking.jpg',
      title: "Network Engineer",
    ),
    CardItem(
      urlImage: 'images/ac.jpg',
      title: "Home Technology",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(1),
        title: Text(
          'STAFF PORTAL',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      body: Container(
        height: 256,
        child: ListView.separated(
          padding: EdgeInsets.all(8.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCard(item: items[index]),
          itemCount: items.length,
          separatorBuilder: (context, _) => SizedBox(
            width: 12,
          ),
        ),
      ),
    );
  }
}

class CardItem {
  final String urlImage;
  final String title;

  CardItem({required this.urlImage, required this.title});
}

Widget buildCard({required CardItem item}) => Container(
      width:400,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  item.urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.title,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
