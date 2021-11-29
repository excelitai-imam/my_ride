part of pages;

class LoginOtpPage extends StatefulWidget {
  const LoginOtpPage({Key? key}) : super(key: key);

  @override
  State<LoginOtpPage> createState() => _LoginOtpPageState();
}

class _LoginOtpPageState extends State<LoginOtpPage> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

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
              title: "Verification Code",
              subTitle:
                  "We have sent the code verification\nto your mobile number",
            ),
            Row(
              children: [
                const Center(
                  child: Text(
                    '+8801987654321',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              ],
            ),
            Row(
              children: [
                _buildOTPValue(focusNode1, onChanged: (val) {
                  if (val.isNotEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode2, onChanged: (val) {
                  if (val.isNotEmpty) focusNode3.requestFocus();
                  if (val.isEmpty) focusNode1.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode3, onChanged: (val) {
                  if (val.isNotEmpty) focusNode4.requestFocus();
                  if (val.isEmpty) focusNode2.requestFocus();
                }),
                SizedBox(width: kHorizontalPadding / 2),
                _buildOTPValue(focusNode4, onChanged: (val) {
                  if (val.isEmpty) focusNode3.requestFocus();
                }),
              ],
            ),
            SizedBox(height: kVerticalPadding),
            LoginRegisterFooter(
              question: '',
              actionText: 'Send another code',
              action: () {},
            ),
            SizedBox(height: kVerticalPadding),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const ProfileSetupPage(),
                  ),
                );
              },
              child: const Text("Login"),
            ),
            SizedBox(height: kVerticalPadding),
          ],
        ),
      ),
    );
  }

  Expanded _buildOTPValue(
    FocusNode focusNode, {
    ValueChanged<String>? onChanged,
  }) {
    return Expanded(
      child: TextFormField(
        // cursorHeight: 100,
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        //obscureText: true,
        //obscuringCharacter: "*",
        style: const TextStyle(
          fontSize: 32,
          color: primaryFontColor,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
