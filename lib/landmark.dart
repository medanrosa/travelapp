import 'package:flutter/material.dart';

class LandmarksPage extends StatelessWidget {
  final List<Map<String, dynamic>> landmarks = [
    {
      'name': 'Fishing Port',
      'image': 'assets/fishingport.jpg',
      'description': 'The port\'s vibrant atmosphere, characterized by colorful boats and bustling activity, offers visitors a glimpse into the traditional way of life in this coastal town.',
    },
    {
      'name': 'Grand Street Church',
      'image': 'assets/chruch.jpg',
      'description': 'A historic landmark nestled in the heart of the city. With its impressive architecture and serene surroundings, the church stands as a symbol of faith and community in Negombo.',
    },
    {
      'name': 'Negombo Lighthouse',
      'image': 'assets/neglighthouse.jpg',
      'description': 'As a symbol of navigation and safety, the Negombo lighthouse offers stunning views and serves as a reminder of the city\'s maritime heritage.',
    },
    {
      'name': 'Dutch Fort',
      'image': 'assets/dutchFort.jpg',
      'description': 'Situated in the heart of Negombo, the fort serves as a reminder of the strategic importance during colonial times.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Landmarks"),
      ),
      body: ListView.builder(
        itemCount: landmarks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                // Navigate to the details page of the landmark
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        landmarks[index]['image'],
                        fit: BoxFit.cover,
                        height: 200, // Adjust height as needed
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        landmarks[index]['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        landmarks[index]['description'],
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
