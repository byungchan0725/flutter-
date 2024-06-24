import 'package:flutter/material.dart';

void main() {
  runApp(F1IntroApp());
}

class F1IntroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F1 Intro App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> teams = [
    {'name': 'Mercedes', 'points': 230, 'color': Colors.teal},
    {'name': 'Red Bull Racing', 'points': 200, 'color': Colors.red},
    {'name': 'Ferrari', 'points': 180, 'color': Colors.redAccent},
    {'name': 'McLaren', 'points': 150, 'color': Colors.orange},
    {'name': 'Aston Martin', 'points': 120, 'color': Colors.green},
  ];

  final List<String> races = [
    'Australian Grand Prix - 20th March',
    'Bahrain Grand Prix - 27th March',
    'Chinese Grand Prix - 10th April',
    'Azerbaijan Grand Prix - 24th April',
    'Spanish Grand Prix - 8th May',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('F1 Introduction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team Points',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: teams.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: teams[index]['color'].withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            title: Text(
                              teams[index]['name'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              '${teams[index]['points']} pts',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Race Schedule',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: races.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            title: Text(races[index]),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
