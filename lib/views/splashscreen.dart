import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.pushReplacementNamed(context, 'Login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color1.blackcolor, // Background color for the splash screen.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Image.asset('images/logo.png', width: 200, height: 200),
            SizedBox(height: 16),
            CircularProgressIndicator(
              color: Color1.whitecolor,
            ),
          ],
        ),
      ),
    );
  }
}
