part of 'widgets.dart';

class ButtomNavbar extends StatelessWidget {
   final int? selectedItem;
   final Function(int Index)? onTap;

   ButtomNavbar({this.selectedItem = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onTap!(0),
            child: Container(
              width: 32, height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/${selectedItem == 0 ? 'ic_home.png' : 'ic_home_normal.png'}'))
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap!(1),
            child: Container(
              width: 32, height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 83),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/${selectedItem == 1 ? 'ic_order.png' : 'ic_order_normal.png'}'))
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onTap!(2),
            child: Container(
              width: 32, height: 32,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/${selectedItem == 2 ? 'ic_profile.png' : 'ic_profile_normal.png'}'))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
