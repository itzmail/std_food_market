part of "widgets.dart";

class RatingStars extends StatelessWidget {
  final double? rate;

  RatingStars({this.rate});

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate!.round();

    return Row(
      children: List<Widget>.generate( 5, (index) => Icon(
        (index < numberOfStars) ? Icons.star : Icons.star_outline,
        size: 16,
        color: mainColor,
        )) + [
          const SizedBox(
            width: 4,
          ),
          Text(
              rate.toString(),
              style: greyFontStyle.copyWith(fontSize: 12),
          )
      ]
    );
  }
}
