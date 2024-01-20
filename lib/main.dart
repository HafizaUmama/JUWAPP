
import 'package:juw_services/views/login.dart';
import 'package:juw_services/views/service.dart';
import 'package:juw_services/views/signup.dart';
import 'package:juw_services/views/splashscreen.dart';

void main() {
  runApp(MyApp());
}

void runApp(MyApp myApp) {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Service', routes: {
      './': (context) => SplashScreen(),
      'Login': (context) => Login(),
      'SignUp':(context) => SignUp(),
      'Service':(context)=>Services(),
    });
  }
}
