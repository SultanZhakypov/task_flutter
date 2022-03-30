import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/fonts.dart';
import 'package:flutter_application_4/screens/widgets/add_container.dart';
import 'package:flutter_application_4/screens/widgets/categories.dart';
import 'package:flutter_application_4/screens/widgets/circleavatar.dart';
import 'package:flutter_application_4/screens/widgets/employeeList.dart';
import 'package:flutter_application_4/screens/widgets/gridview.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: const Text('Profile', style: Fonts.f20w400),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: const [
              SizedBox(
                height: 24,
              ),
              CircleAvatarClass(),
              Categories(),
              Emplyoee(),
              AddedEmployee(),
              GridviewClass(),
            ],
          ),
        ),
      ),
    );
  }
}

