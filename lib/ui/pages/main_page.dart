part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavBarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavBarIndex = 0;
    pageController = PageController(initialPage: bottomNavBarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ================================ APP BAR =============================

      // END OF APP BAR ============================================

      // BODY
      body: Stack(
        children: [
          Container(
            color: redColor,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),

          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                bottomNavBarIndex = index;
              });
            },
            children: [
              // Tampilkan terlebihdahulu dengan warna

              HomePage(),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
              Container(color: Colors.green)
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              child: BottomNavigationBar(
                  onTap: (index) {
                    setState(() {
                      bottomNavBarIndex = index;
                      pageController.jumpToPage(index);
                    });
                  },
                  elevation: 0,
                  selectedItemColor: secondaryBlue,
                  unselectedItemColor: textColor,
                  currentIndex: bottomNavBarIndex,
                  backgroundColor: secondaryBlue,
                  items: [
                    BottomNavigationBarItem(
                        backgroundColor: secondaryBlue,
                        label: "",
                        icon: Container(
                          margin: EdgeInsets.only(bottom: 6),
                          height: 20,
                          child: Image.asset((bottomNavBarIndex == 0)
                              ? "assets/icons/web_active.png"
                              : "assets/icons/web.png"),
                        )),
                    BottomNavigationBarItem(
                        backgroundColor: secondaryBlue,
                        label: "",
                        icon: Container(
                          margin: EdgeInsets.only(bottom: 6),
                          height: 20,
                          child: Container(
                            margin: EdgeInsets.only(right: 80),
                            child: Image.asset((bottomNavBarIndex == 1)
                                ? "assets/icons/love_active.png"
                                : "assets/icons/love.png"),
                          ),
                        )),
                    BottomNavigationBarItem(
                        backgroundColor: secondaryBlue,
                        label: "",
                        icon: Container(
                          margin: EdgeInsets.only(bottom: 6),
                          height: 20,
                          child: Image.asset((bottomNavBarIndex == 2)
                              ? "assets/icons/play_active.png"
                              : "assets/icons/play.png"),
                        )),
                    BottomNavigationBarItem(
                        backgroundColor: secondaryBlue,
                        label: "",
                        icon: Container(
                          margin: EdgeInsets.only(bottom: 6),
                          height: 20,
                          child: Image.asset((bottomNavBarIndex == 3)
                              ? "assets/icons/user_active.png"
                              : "assets/icons/user.png"),
                        )),
                  ]),
            ),
          ),

          // Search Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(bottom: 42),
              child: FloatingActionButton(
                  elevation: 5,
                  backgroundColor: pinkColor,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Icon(
                      MdiIcons.magnify,
                      color: whiteColor,
                    ),
                  ),
                  onPressed: () {
                    // context
                    //     .bloc<PageBloc>()
                    //     .add(GoToTopUpPage(GoToMainPage()));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
