import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';

class AddedEmployee extends StatelessWidget {
  const AddedEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: const Color(0xff000000).withOpacity(0.12))),
          height: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'ADD FRIEND',
                style: Fonts.f14w500,
              ),
              Icon(Icons.add)
            ],
          ),
        ),
        const SizedBox(height: 16,),
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('My media'),
        ),
      ],
    );
  }
}
