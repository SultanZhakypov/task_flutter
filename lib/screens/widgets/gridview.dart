import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/images.dart';

class GridviewClass extends StatefulWidget {
  const GridviewClass({Key? key}) : super(key: key);

  @override
  State<GridviewClass> createState() => _GridviewClassState();
}

class _GridviewClassState extends State<GridviewClass> {
    List images = [
    Images.rectangle9,
    Images.rectangle10,
    Images.rectangle11,
    Images.rectangle12,
    Images.rectangle13,
    Images.rectangle14,
    Images.rectangle8,
    Images.rectangle7,
    Images.rectangle6,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Image(
                  image: AssetImage(images[index]),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: const Color(0xffCF6679),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 1)),
                      child: InkWell(
                        onTap: () {
                          images.removeAt(index);
                          setState(() {
                            
                          });
                        },
                        child: const Icon(
                          Icons.close,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xff6200ee)),
                  height: 36,
                  width: 156,
                  child: const Text(
                    'DELETE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          color: const Color(0xff000000).withOpacity(0.12))),
                  height: 36,
                  width: 156,
                  child: const Text(
                    'ADD',
                    style: TextStyle(color: Color(0xff6200EE)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
