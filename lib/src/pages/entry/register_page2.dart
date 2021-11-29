part of pages;

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        height: MediaQuery.of(context).size.height,
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
              onPressed: () {},
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
