import 'package:flutter/material.dart';
import 'package:ndamar/configs/color_config.dart';
import 'package:ndamar/configs/icon_config.dart';

class CustomColumn extends StatefulWidget {
  final img_src;
  final marque;
  final price;
  final idPublication;
  const CustomColumn({super.key, required this.img_src, required this.marque, required this.price, required this.idPublication});

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: Image.asset(
            widget.img_src,
            width: 200,
            height: 145,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          width: 160,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: BoxDecoration(
             
                color: ColorConf.blackWithOpacity_0_1,
                borderRadius: const BorderRadius.all(Radius.circular(5.0))),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Marque : ${widget.marque}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconConfig.moneyIcon,
                    const SizedBox(width: 10,),
                    Text("${widget.price}/jour"),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}