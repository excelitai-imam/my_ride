part of pages;

class LoginPage1 extends StatelessWidget {
  const LoginPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LoginRegistrationHeader(
                      centerText: false,
                      title: 'Login Account',
                      subTitle: 'Hello, Welcome back to your account',
                    ),
                    // Column(
                    //   children: [
                    //     Row(
                    //       children: const [
                    //         Text('data'),
                    //       ],
                    //     ),
                    //     Row(
                    //       children: const [
                    //         Text('data'),
                    //       ],
                    //     )
                    //   ],
                    // ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 15,
                        ),
                        //DropdownMenuItem(child: Column())
                      ],
                    ),
                  ],
                ),
                const TextField(
                  style: TextStyle(color: primaryFontColor),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down),
                    suffixIcon: Icon(Icons.check_box_rounded),
                    labelText: '+880 Enter your number',
                    isCollapsed: true,
                  ),
                ),
                // SizedBox(height: kVerticalPadding),
                // TextFormField(
                //   style: const TextStyle(color: primaryFontColor),
                //   obscureText: true,
                //   decoration: const InputDecoration(
                //     labelText: 'Password',
                //     isCollapsed: true,
                //   ),
                // ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const kRouteLogin2,
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteLogin2);
                  },
                  child: const Text("Next"),
                ),
                SizedBox(height: kVerticalPadding),
                // GestureDetector(
                //   onTap: () {
                //     // Navigator.of(context).push(
                //     //   MaterialPageRoute(
                //     //     builder: (context) => const EnterEmailPage,
                //     //   ),
                //     // );
                //   },
                //   child: Text(
                //     "Forgot your password?",
                //     style: Theme.of(context).textTheme.subtitle1!.copyWith(
                //           color: primaryFontColor,
                //         ),
                //   ),
                // ),
                //SizedBox(height: kVerticalPadding * 2),
                Text(
                  "Signin with social media",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: secondaryFontColor,
                      ),
                ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.facebookF,
                  ),
                  label: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff03b6fc),
                    padding: EdgeInsets.all(kButtonIconPadding),
                  ),
                ),
                //             Container(
                //   alignment: Alignment.bottomCenter,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       SignInButton(
                //         Buttons.Google,
                //         text: "Sign up with Google",
                //         onPressed: () {},
                //       ),
                //       SignInButton(
                //         Buttons.Facebook,
                //         text: "Sign up with Facebook",
                //         onPressed: () {},
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.googlePlusSquare,
                    //color: Colors.black,
                  ),
                  label: const Text(
                    'Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff7faf9),
                    padding: EdgeInsets.all(kButtonIconPadding),
                  ),
                ),
                const Expanded(child: SizedBox.shrink()),
                LoginRegisterFooter(
                  question: 'Not registered yet?',
                  actionText: ' Create an Account',
                  action: () {
                    Navigator.pushReplacementNamed(context, kRouteRegister1);
                  },
                ),
                SizedBox(height: kVerticalPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
