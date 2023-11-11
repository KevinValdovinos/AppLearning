import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app/kernel/themes/colors_app.dart';

class ContainerShop extends StatelessWidget {
  const ContainerShop({super.key});
  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Card(
        elevation: 5,
        child: Column(children: [
          Image.asset(
            'assets/images/Logo-utez.png',
            width: widthImage,
            height: 60,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                    width: 64,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '!Phone 15 Pro Max Delta Gama XD',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    )),
                const Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 8,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text('Descripción del producto',
                style: TextStyle(fontSize: 8, color: Colors.black54)),
          ),
          ElevatedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: ColorsApp.succesColor,
              side: const BorderSide(color: ColorsApp.succesColor, width: 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            child: const Row(
              children: [
              Text('Ver Más'),
                Spacer(),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),
          )
        ]));
  }
}
