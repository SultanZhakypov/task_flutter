import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';
import 'package:flutter_application_4/model/user_model.dart';

class Emplyoee extends StatefulWidget {
  const Emplyoee({Key? key}) : super(key: key);

  @override
  State<Emplyoee> createState() => _EmplyoeeState();
}

class _EmplyoeeState extends State<Emplyoee> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const Divider(
              indent: 70,
            ),
        itemBuilder: (content, index) {
          final user = userList[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(user.image),
            ),
            title: Text(
              user.name,
              style: Fonts.f16w400,
            ),
            subtitle: Text(
              user.speciality,
              style: Fonts.f12w400,
            ),
            trailing: IconButton(
              onPressed: () {
                userList.removeAt(index);
                setState(() {});
              },
              icon: const Icon(
                Icons.close,
                color: Color(0xffCF6679),
              ),
            ),
          );
        },
        itemCount: userList.length);
  }
}
