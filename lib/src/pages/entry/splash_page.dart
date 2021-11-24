part of pages;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      _controller = AnimationController(vsync: this);
      Navigator.pushReplacementNamed(context, kRouteIntro);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/logo.png',
            // 'assets/splash101.jpg',
            // 'assets/splashbg1.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.9),
          ),
          const SplashLogo(),
        ],
      ),

      // body: ListView(
      //   children: [
      //     // Load a Lottie file from your assets
      //     //Lottie.asset('assets/data.json'),
      //     Lottie.asset(
      //       'assets/data.json',
      //       controller: _controller,
      //       onLoaded: (composition) {
      //         // Configure the AnimationController with the duration of the
      //         // Lottie file and start the animation.
      //         _controller
      //           ..duration = composition.duration
      //           ..forward();
      //       },
      //     ),

      //     // Load a Lottie file from a remote url
      //     // Lottie.network(
      //     //     'https://assets2.lottiefiles.com/packages/lf20_jowhefc2/new car riding animation svg/data.json'),

      //     // Load an animation and its images from a zip file
      //     //Lottie.asset('assets/lottie.zip'),
      //   ],
      // ),
    );
  }
}
