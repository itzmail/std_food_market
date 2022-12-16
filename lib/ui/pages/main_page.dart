part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white
          ),
          SafeArea(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                children: const [
                  Center(
                      child: Text("Home Screen")
                  ),
                  Center(
                      child: Text("Order Screen")
                  ),
                  Center(
                      child: Text("Body ")
                  ),
                ],
              ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtomNavbar(
              selectedItem: selectedPage,
              onTap: (index) {
                print(index);
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(index);
              },
            )
          )
        ],
      )
    );
  }
}
