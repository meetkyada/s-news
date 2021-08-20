import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategorieModel> categories = List<CategorieModel>();

  @override
  void initState() {
    super.initState();
    categories = getCategories();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('News',style: TextStyle(color: Colors.black),),),
      
    );
  }
}
class CategoryTile extends StatelessWidget {
final imageUrl,categoryName;
CategoryTile({this.imageUrl,this.categoryName});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(imageUrl,width: 120,height: 60,)
        ],
      ),
    );
  }
}
