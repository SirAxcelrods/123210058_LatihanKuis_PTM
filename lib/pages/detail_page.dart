import 'package:flutter/material.dart';
import 'package:latihan_kuis/data/tourism_place.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TourismPlace place = ModalRoute.of(context)!.settings.arguments as TourismPlace;

    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: place.imageUrls.length,
              itemBuilder: (context, index) {
                return Image.network(
                  place.imageUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.location,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  SizedBox(height: 12.0),
                  Text(place.description),
                  SizedBox(height: 16.0),
                  Text('Open Days: ${place.openDays}'),
                  Text('Open Time: ${place.openTime}'),
                  Text('Ticket Price: ${place.ticketPrice}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
