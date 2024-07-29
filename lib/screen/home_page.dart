import 'package:buttomnavigationbar_practice/screen/navigation_bar/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;

  // List ScreenList =[
  //   const HomePage(),
  //   const ProductScreen(),
  //   const AccountScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            // currentIndex =index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
                child: const Icon(Icons.home)),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: "Product",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
        ],
      ),
    );
  }
  // void tappedFun(int i){
  //   setState(() {
  //     index=i;
  //   });
  // }
}
