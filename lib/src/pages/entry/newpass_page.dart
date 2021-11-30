part of pages;

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteRestePassOtp);
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginRegistrationHeader(
              centerText: true,
              title: "New Password",
              subTitle: "Enter new password",
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
              ),
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
