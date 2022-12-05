part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  const GeneralPage(
      {super.key,
      this.title = "TITLE",
      this.subtitle = "SUBTITLE",
      this.onBackButtonPressed,
      this.backColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: backColor ?? Colors.white,
          )),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding:  const EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(children: [
                        onBackButtonPressed != null
                            ? Container(
                                width: 24,
                                height: 24,
                                margin: const EdgeInsets.only(right: 26),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/back_arrow.png')),
                                ),
                              )
                            : const SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.poppins(
                                  color: '8D92A3'.toColor(),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ]),
                    ),
                    Container(height: defaultMargin, width: double.infinity, color: 'FAFAFC'.toColor()),
                    child ?? const SizedBox()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
