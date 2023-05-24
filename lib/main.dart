import 'package:dharma_daily/views/pages.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // await JustAudioBackground.init(
  //   androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
  //   androidNotificationChannelName: 'Audio playback',
  //   androidNotificationOngoing: true
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dharma Daily',
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  
  Color _colorTripitaka = Colors.orange;
  Color _colorMeditation = Colors.grey;

  final tabs = [
    Listparitta(),
    Meditation()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [

          BottomNavigationBarItem(
            icon: Container(
              height: 25,
              child: Image.asset(
                'lib/icons/tripitaka.png', 
                color: _colorTripitaka
              ),
            ),
            label: "Paritta",
          ),

          BottomNavigationBarItem(
            icon: Container(
              height: 25,
              child: Image.asset(
                'lib/icons/meditation.png', 
                color: _colorMeditation
              ),
            ),
            label: "Meditation"
          )
          
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 0) {
              _colorTripitaka = _colorTripitaka == Colors.grey
                ? Colors.orange
                : Colors.orange;
            }else{
              _colorTripitaka = _colorTripitaka == Colors.grey
                ? Colors.grey
                : Colors.grey;
            }
            if (_currentIndex == 1) {
              _colorMeditation = _colorMeditation == Colors.grey
                ? Colors.orange
                : Colors.orange;
            }else{
              _colorMeditation = _colorMeditation == Colors.grey
                ? Colors.grey
                : Colors.grey;
            }
          });
        },
      ),
    );
  }
}
