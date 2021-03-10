part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Parent(
              style: ParentStyle()
                ..margin(
                    top: 2 * defaultMargin,
                    left: defaultMargin,
                    right: defaultMargin),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Parent(
                      style: ParentStyle()
                        ..width(133)
                        ..height(148)
                        ..background.image(
                          path: "assets/images/login.png",
                        )),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Silahkan masuk dengan nomor \ntelkomsel kamu",
                    style: blackTextFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Nomor HP",
                    style: blackTextFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFA4B0BE))),
                        hintText: "Cth. 0812901xxxx",
                        hintStyle:
                            blackTextFont.copyWith(color: Color(0xFFA4B0BE))),
                  ),
                ],
              ),
            ),
            CheckboxListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Saya menyetujui  "),
                      redText("syarat"),
                      Text(","),
                      redText("ketentuan"),
                      Text(","),
                    ],
                  ),
                  Row(
                    children: [
                      Text("dan "),
                      redText("privasi Telkomsel"),
                    ],
                  ),
                ],
              ),
              value: _checked,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  _checked = value;
                });
              },
              activeColor: redColor,
              checkColor: Colors.white,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                children: [
                  Container(
                    height: 42,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "LANJUT",
                        style: whiteTextFont.copyWith(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      color: redColor,
                      onPressed: () {
                        Get.toNamed("/verificatonPage");
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: redColor)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text(
                      "Atau masuk menggunakan",
                      style:
                          blackTextFont.copyWith(fontSize: 14, color: greyDark),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: facebookColor, width: 2)),
                        height: 42,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 24,
                                child:
                                    Image.asset("assets/icons/facebook.png")),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              "Facebook",
                              style: blackTextFont.copyWith(
                                  color: facebookColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        width: defaultMargin,
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: twitterColor, width: 2)),
                        height: 42,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 24,
                                child: Image.asset("assets/icons/twitter.png")),
                            SizedBox(
                              width: 14,
                            ),
                            Text(
                              "Twitter",
                              style: blackTextFont.copyWith(
                                  color: twitterColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text redText(String text) {
    return Text(
      text,
      style: blackTextFont.copyWith(
          color: redColor, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
