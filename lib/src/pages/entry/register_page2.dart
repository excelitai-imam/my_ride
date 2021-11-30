part of pages;

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const LoginRegistrationHeader(
                  title: 'Create an Account',
                  subTitle: 'Hello, Welcome to Ei Khali',
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
            SizedBox(height: kVerticalPadding),
            const TextField(
              style: TextStyle(color: primaryFontColor),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.arrow_drop_down),
                labelText: '+880  Enter your number',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'New Password',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'Confirm New Password',
                  isCollapsed: true,
                  suffixIcon: Icon(Icons.remove_red_eye_sharp)),
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, kRouteRegisterOtp);
              },
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
