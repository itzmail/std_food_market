part of 'pages.dart';


class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
          //  HEADER
            Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Food Market', style: blackFontStyle1,),
                      Text("Let's get some foods", style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),)
                    ],
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.0, color: Colors.grey),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://robohash.org/mantap',
                                ), fit: BoxFit.cover)
                    ),
                  )
                ],
              ),
            ),
            FoodCard(
              food: mockFood,
            )
          ],
        )
      ],
    );
  }
}

// class FoodPage extends StatefulWidget {
//   const FoodPage({Key? key}) : super(key: key);
//
//   @override
//   State<FoodPage> createState() => _FoodPageState();
// }

// class _FoodPageState extends State<FoodPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
