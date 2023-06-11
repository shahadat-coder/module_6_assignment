import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: PhotoGalleryScreen(),
    );
  }
}

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MySnackBar(massege, context) {
      return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(massege))
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to My Photo Gallery!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search for photos',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                for (int i = 1; i <= 6; i++)
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Clicked on photo!'),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'data:image/jpeg;base64,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',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8.0),

                        Text('Photo $i'),
                      ],
                    ),
                  ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  leading: Image.network(
                    'https://rare-gallery.com/uploads/posts/880579-Interior-Window-Living-room-Sofa-Pillows-Design.jpg',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 1'),
                  subtitle: Text('Description for Photo 1'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://st2.depositphotos.com/1047404/9568/i/600/depositphotos_95681406-stock-photo-living-room-with-orange-sofa.jpg',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 2'),
                  subtitle: Text('Description for Photo 2'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://cdn.create.vista.com/api/media/small/87970340/stock-photo-living-room-or-saloon-interior',
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                  title: Text('Photo 3'),
                  subtitle: Text('Description for Photo 3'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("Photos Uploaded Successfully", context);
        },
        elevation: 10,
        child: Icon(Icons.cloud_upload),
        backgroundColor: Colors.cyan,
      ),

    );
  }

}

