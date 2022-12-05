part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? dropDownValue = 'hello, world';
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController noHouseController = TextEditingController();

    return GeneralPage(
      title: 'Address',
      subtitle: "Make sure it's valid",
      child: Column(
        children: [
          /* PHONE */
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Phone No.",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your phone number'),
            ),
          ),

          /* ADDRESS */
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your address'),
            ),
          ),

          /* NO hoUSE */
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "House No.",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: noHouseController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your house number'),
            ),
          ),

          /* CITY */
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "City.",
              style: blackFontStyle2,
            ),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.black),
              ),
              // child: DropdownButton(
              //   value:
              //       dropDownValue, // this place should not have a controller but a variable
              //   onChanged: (_value) {
              //     setState(() {
              //       dropDownValue = _value;
              //     });
              //   },
              //   items: ["hello, world", "how are you", "goodbye"]
              //       .map<DropdownMenuItem<String>>((String _value) =>
              //           DropdownMenuItem<String>(
              //               value:
              //                   _value, // add this property an pass the _value to it
              //               child: Text(
              //                 _value,
              //               )))
              //       .toList(),
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Bandung',
                      style: blackFontStyle3,
                    ),
                    value: 'Bandung',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Jakarta',
                      style: blackFontStyle3,
                    ),
                    value: 'Jakarta',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Surabaya',
                      style: blackFontStyle3,
                    ),
                    value: 'Surabaya',
                  ),
                ],
                onChanged: null,
              )),

          /* BUTTON */

          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 24),
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ElevatedButton(
              onPressed: () {
                Get.to(SignUpPage());
              },
              // ignore: sort_child_properties_last
              child: Text(
                'Sign Up Now',
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor, // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          )
        ],
      ),
    );
  }
}
