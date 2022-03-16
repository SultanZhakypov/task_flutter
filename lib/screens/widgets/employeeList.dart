import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';
import 'package:flutter_application_4/model/user_model.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
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
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Color(0xffCF6679),
            ),
          ),
        ),
      ],
    );
  }
}

class Emplyoee extends StatelessWidget {
  const Emplyoee({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => Divider(indent: 70,),
        itemBuilder: (content, index) => UsersList(
              user: User.getListUser()[index],
            ),
        itemCount: User.getListUser().length);
  }
}
