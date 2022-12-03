 
import '../../global.dart';
import '../buttons/buttons.dart';
import '../color/colors.dart';

Widget formCards(String image, String title, String body, Widget callback) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    child: Container(
      width: 400,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 40, height: 40, child: Image.asset(image)),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Color(cPrimary), fontSize: 18),
            ),
            Text(body),
            SizedBox(
              height: 10,
            ),
            callback
          ],
        ),
      ),
    ),
  );
}

Widget formCardsButton(String text ) {
  return Container(
    height: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: Color(cPrimary))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Center(child: Text(text)),
    ),
  );
}
