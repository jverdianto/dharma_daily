part of 'pages.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => MyHomePage(title: "Dharma Daily",)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'lib/icons/dhamma_wheel.gif',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Dharma Daily",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}