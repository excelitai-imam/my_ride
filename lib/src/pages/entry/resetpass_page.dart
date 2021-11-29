part of pages;

class PassResetPage extends StatelessWidget {
  const PassResetPage({Key? key}) : super(key: key);

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
            const LoginRegistrationHeader(
              centerText: true,
              title: "Reset Password",
              subTitle:
                  "Please enter your email to receive a link\nto create new password via email",
            ),
            TextFormField(
              style: const TextStyle(color: primaryFontColor),
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Your Phone Number',
                isCollapsed: true,
              ),
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => const EnterOtpPage(),
                //   ),
                // );
                Navigator.pushReplacementNamed(context, kRouteRestePassOtp);
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
