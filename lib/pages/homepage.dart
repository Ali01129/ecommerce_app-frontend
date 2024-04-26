import 'package:flutter/material.dart';
import 'package:untitled/components/buttom_nav_bar.dart';
import 'package:untitled/pages/cart_page.dart';
import 'package:untitled/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected_index=0;

  void NavigateButtomBar(int index){
    setState(() {
      _selected_index=index;
    });
  }

  final List<Widget> _pages=[
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context)=>IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed:(){
              Scaffold.of(context).openDrawer();
            } ,
          ),
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset('assets/logo.png',color: Colors.white,width: 150,height: 100,)),
                const SizedBox(height: 30,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About"),
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40,bottom: 20 ),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                textColor: Colors.white,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyButtomNavbar(
        onTabChange:(index)=> NavigateButtomBar(index),
      ),
      body: _pages[_selected_index],
    );
  }
}
