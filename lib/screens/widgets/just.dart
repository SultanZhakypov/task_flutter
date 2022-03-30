import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';
import 'package:flutter_application_4/model/user_model.dart';

class UsersList extends StatefulWidget {
   UsersList({Key? key, required this.index}) : super(key: key);

 
  int index;

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
     final user = userList[widget.index];
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
            onPressed: () {
              userList.removeAt(widget.index);
              setState(() {
                
              });
              
            },
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
              setState(() {
                
              });
              
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





class User{
  int id;
  String name;
  String speciality;
  String image;

  User({required this.id,required this.name,required this.speciality, required this.image});





}

 List<User> userList = [
    User(id: 1, name: 'Corey George',speciality: 'Developer', image: 'assets/images/circleimage4.png'),
    User(id: 2, name: 'Ahmad Vetrovs',speciality: 'Developer', image: 'assets/images/circleimage3.png'),
    User(id: 3, name: 'Cristofer Workman',speciality: 'Developer', image: 'assets/images/circleimage1.png'),
    User(id: 4, name: 'Tiana Korsgaard',speciality: 'Developer', image: 'assets/images/circleimage2.png'),
 ];