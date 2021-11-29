part of pages;

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    const LoginRegistrationHeader(
                      centerText: false,
                      title: 'Login Account',
                      subTitle: 'Hello, Welcome back to your account',
                    ),
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_drop_down),
                    labelText: '+880 Enter your number',
                    isCollapsed: true,
                  ),
                ),
                SizedBox(height: kVerticalPadding),
                const TextField(
                  obscureText: true,
                  style: TextStyle(color: primaryFontColor),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    labelText: 'Enter your password',
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
                    //     builder: (context) => const ProfileSetupPage(),
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteLoginOtp);
                  },
                  child: const Text("Login"),
                ),
                SizedBox(height: kVerticalPadding),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const EnterEmailPage(),
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteResetPass);
                  },
                  child: Text(
                    "Forgot your password?",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: mainColor,
                        ),
                  ),
                ),
                SizedBox(height: kVerticalPadding * 2),

                // const Expanded(child: SizedBox.shrink()),
                // LoginRegisterFooter(
                //   question: 'Don\'t have an Account?',
                //   actionText: ' Sign Up',
                //   action: () {
                //     Navigator.pushReplacementNamed(context, kRouteLoginOtp);
                //   },
                // ),
                // SizedBox(height: kVerticalPadding),
              ],
            ),
          ),
        ),
      ),
      //body: LoginOtpPage(),
    );
  }
}
