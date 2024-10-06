import 'package:flutter/material.dart';
import 'package:ndamar/configs/color_config.dart';
import 'package:ndamar/models/publication_model.dart';

class CustomCard extends StatefulWidget {
   final Publication publication;
   const CustomCard({super.key, required this.publication});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      color: ColorConf.blackWithOpacity_0_1,
                    ),
                    // height: MediaQuery.of(context).size.height / 3 + 100,
                    child: Column(
                      children: [
                         const SizedBox(
                          height: 5.0,
                        ),
                         Text(widget.publication.marque),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            child: Image.asset(
                              widget.publication.img_url,
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${widget.publication.prix} F / Jour"),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              color: Colors.blue[800],
                            ),
                            child: const Text(
                              "Voir",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
  }
}