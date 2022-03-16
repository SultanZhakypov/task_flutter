import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Select type',
            style: Fonts.f16w400,
          ),
        ),
        SizedBox(
          height: 32,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: index == selectedIndex
                              ? const Color(0xffDBB2FF)
                              : Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      color: index == selectedIndex
                          ? const Color(0xffF2E7FE)
                          : const Color(0xff000000).withOpacity(0.08),
                    ),
                    height: 32,
                    width: 60,
                    child: Center(
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIndex
                              ? const Color(0xff6200EE)
                              : const Color(0xff000000).withOpacity(0.38),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Divider(),
        ),
        const Text(
          'Friends',
          style: Fonts.f16w400,
        ),
      ],
    );
  }
}
