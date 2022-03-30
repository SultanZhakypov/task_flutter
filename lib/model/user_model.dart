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