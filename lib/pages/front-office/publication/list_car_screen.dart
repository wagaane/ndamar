import 'package:flutter/material.dart';
import 'package:ndamar/models/publication_model.dart';
import 'package:ndamar/widgets/custom_card.dart';
import 'package:ndamar/widgets/custom_carousel_slider.dart';

class ListCarScreen extends StatefulWidget {
  final moreRentedCars;
  const ListCarScreen({super.key, required this.moreRentedCars});

  @override
  State<ListCarScreen> createState() => _ListCarScreenState();
}

class _ListCarScreenState extends State<ListCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
         
         
          Expanded(child: 
          ListView(
            children: [
               const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Les plus louées",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomCarouselSlider(cars: widget.moreRentedCars),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0),
            child: Row(
              children: [
                Text(
                  "BMW",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                Text("(80)")
              ],
            ),
          ),
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,

                // addAutomaticKeepAlives: true,
                children: [
                  CustomCard(publication: Publication(img_url: "assets/bmw.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/bmw.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/bmw.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/bmw.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0),
            child: Row(
              children: [
                Text(
                  "MERCEDES",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                Text("(80)")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,

                // addAutomaticKeepAlives: true,
                children: [
                  CustomCard(publication: Publication(img_url: "assets/mercedes.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/mercedes.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/mercedes.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(publication: Publication(img_url: "assets/mercedes.png",id: "sdfdw9988sfcc9", marque: "BMW X6", prix: "80000", annee: 2018, carburant: "Essence", transmission: "AUTO", datePublication: "25/06/2024")),
                  const SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ),
            ],
          )
          )
          
        ],
      );
  }
}