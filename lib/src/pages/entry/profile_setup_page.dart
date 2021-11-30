part of pages;

class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteRegister1);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xfffe8550),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     const Icon(FontAwesomeIcons.arrowCircleLeft),
              //     GestureDetector(),
              //   ],
              // ),

              const LoginRegistrationHeader(
                centerText: true,
                title: "Setup Profile",
                subTitle: "Great! you are almost done",
              ),
              CircleAvatar(
                radius: 200.r,
                backgroundImage: const AssetImage(
                  "assets/p1.jpg",
                ),
              ),
              // Row(
              //   //crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     Icon(
              //       Icons.edit,
              //       color: mainColor,
              //       size: 15,
              //     ),
              //     Text(
              //       "Edit Profile",
              //       style: TextStyle(color: mainColor, fontSize: 15),
              //     ),
              //   ],
              // ),
              // const Text(
              //   "Hi there Emilla!",
              //   style: TextStyle(color: primaryFontColor, fontSize: 20),
              // ),
              // const Text(
              //   "Sign Out",
              //   style: TextStyle(color: placeholderColor, fontSize: 10),
              // ),

              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your full name',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22),
                    // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your Email address',
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(22), // Added this
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'Address',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'password',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              //   child: const TextField(
              //     decoration: InputDecoration(
              //       labelText: 'confirm password',
              //       isDense: true, // Added this
              //       contentPadding: EdgeInsets.all(22), // Added this
              //     ),
              //   ),
              // ),
              //TextButton(onPressed: (){}, child: Text("Edit Profile",style: TextStyle(color: mainColor,fontSize: 20),))
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const ProfileSetupPage(),
                      ),
                    );
                  },
                  child: const Text("Done"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
