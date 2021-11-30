part of pages;

class PassResetPage extends StatelessWidget {
  const PassResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteLogin2);
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
